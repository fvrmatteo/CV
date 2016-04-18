using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection;
using System.Reflection.Emit;

namespace IlEmitHelp
{
    public class ILEmitParticle : IComparable
    {
        public object ilSyntaxElement;

        public object arg;

        public object seq;

        public ILEmitParticle(object opCode, object arg, object seq)
        {
            this.ilSyntaxElement = opCode;
            this.arg = arg;
            this.seq = seq;
        }

        int IComparable.CompareTo(object x)
        {
            return string.Compare(this.seq as string, ((ILEmitParticle)x).seq as string);
        }
    }

    public class IlParticlesEmitor
    {
        protected ILGenerator ilGen;

        protected List<ILEmitParticle> iLParticles;

        public IlParticlesEmitor(ILGenerator ilGen)
        {
            this.ilGen = ilGen;
            this.iLParticles = new List<ILEmitParticle>();
        }

        public void addILParticle(ILEmitParticle iLEmitParticle)
        {
            this.iLParticles.Add(iLEmitParticle);
        }

        public void emitParticles()
        {
            this.iLParticles.Sort();
            foreach (ILEmitParticle current in this.iLParticles)
            {
                if (current.ilSyntaxElement is OpCode)
                {
                    if (current.arg != null)
                    {
                        if (current.arg is Label)
                        {
                            this.ilGen.Emit((OpCode)current.ilSyntaxElement, (Label)current.arg);
                        }
                        else
                        {
                            OperandType operandType = ((OpCode)current.ilSyntaxElement).OperandType;
                            if (operandType <= OperandType.InlineR)
                            {
                                switch (operandType)
                                {
                                    case OperandType.InlineI:
                                        this.ilGen.Emit((OpCode)current.ilSyntaxElement, (int)current.arg);
                                        continue;
                                    case OperandType.InlineI8:
                                        this.ilGen.Emit((OpCode)current.ilSyntaxElement, (long)current.arg);
                                        continue;
                                    default:
                                        if (operandType == OperandType.InlineR)
                                        {
                                            this.ilGen.Emit((OpCode)current.ilSyntaxElement, (float)current.arg);
                                            continue;
                                        }
                                        break;
                                }
                            }
                            else
                            {
                                if (operandType == OperandType.InlineString)
                                {
                                    this.ilGen.Emit((OpCode)current.ilSyntaxElement, (string)current.arg);
                                    continue;
                                }
                                switch (operandType)
                                {
                                    case OperandType.ShortInlineI:
                                        this.ilGen.Emit((OpCode)current.ilSyntaxElement, (byte)current.arg);
                                        continue;
                                    case OperandType.ShortInlineR:
                                        this.ilGen.Emit((OpCode)current.ilSyntaxElement, (float)current.arg);
                                        continue;
                                }
                            }
                            if (current.arg is byte)
                            {
                                this.ilGen.Emit((OpCode)current.ilSyntaxElement, (byte)current.arg);
                            }
                            else if (current.arg is int)
                            {
                                this.ilGen.Emit((OpCode)current.ilSyntaxElement, (int)current.arg);
                            }
                            else
                            {
                                if (!(current.arg is MethodInfo))
                                {
                                    throw new Exception("Invalid argument");
                                }
                                this.ilGen.Emit((OpCode)current.ilSyntaxElement, (MethodInfo)current.arg);
                            }
                        }
                    }
                    else
                    {
                        this.ilGen.Emit((OpCode)current.ilSyntaxElement);
                    }
                }
                else if (current.ilSyntaxElement is Label)
                {
                    this.ilGen.MarkLabel((Label)current.ilSyntaxElement);
                }
            }
        }
    }
}