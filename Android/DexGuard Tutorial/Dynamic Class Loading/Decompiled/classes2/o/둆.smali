.class public final Lo/둆;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static final Ą:Ljava/lang/String;

.field private static ą:Z

.field private static final Ć:Ljava/math/BigInteger;

.field private static final ć:[B

.field static final synthetic ȃ:Z

.field public static ˮ͈:Lo/䬦;

.field public static 櫯:Z

.field public static 鷭:Z


# direct methods
.method static <clinit>()V
    .registers 3

    .line 42
    const/16 v0, 0x1a1

    new-array v0, v0, [B

    fill-array-data v0, :array_3c

    sput-object v0, Lo/둆;->ć:[B

    const-class v0, Lo/둆;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    sput-boolean v0, Lo/둆;->ȃ:Z

    .line 44
    const-class v0, Lo/둆;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/둆;->Ą:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lo/둆;->鷭:Z

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lo/둆;->櫯:Z

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lo/둆;->ˮ͈:Lo/䬦;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lo/둆;->ą:Z

    .line 72
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lo/둆;->Ć:Ljava/math/BigInteger;

    return-void

    nop

    :array_3c
    .array-data 0x1
        0xf2t
        0x1et
        0xfbt
        0x3t
        0xat
        0x6t
        0xf7t
        0x6t
        0xfat
        0xf7t
        0xc4t
        0x24t
        0x2dt
        0x4t
        0x1t
        0x4t
        0xfct
        0x5t
        0xadt
        0x44t
        0xfft
        0x3t
        0x6t
        0xfet
        0xbct
        0x47t
        0x4t
        0x4t
        0xfat
        0xd6t
        0xe7t
        0xf2t
        0x1et
        0xfbt
        0x3t
        0xat
        0x6t
        0xf7t
        0x6t
        0xfat
        0xf7t
        0xc4t
        0x37t
        0xct
        0xct
        0xfet
        0xfct
        0xfet
        0x14t
        0xf6t
        0x6t
        0xfat
        0xbat
        0x47t
        0xdt
        0xfet
        0xfft
        0xb4t
        0x44t
        0xfft
        0x3t
        0x6t
        0xfet
        0xbct
        0x47t
        0x4t
        0x4t
        0xfat
        0xbct
        0xft
        0x1t
        0x1t
        0xf2t
        0x1et
        0xfbt
        0x3t
        0xat
        0x6t
        0xf7t
        0x6t
        0xfat
        0xf7t
        0xc4t
        0x33t
        0x14t
        0xft
        0xfet
        0x0t
        0x0t
        0x6t
        0xf3t
        0xbct
        0x4at
        0xbt
        0xaet
        0x4ft
        0x2t
        0x6t
        0xadt
        0x57t
        0xect
        0xct
        0xfet
        0xfct
        0xbdt
        0x42t
        0xet
        0xct
        0xf5t
        0x3t
        0x4t
        0xf4t
        0xcat
        0xf2t
        0x1et
        0xfbt
        0x3t
        0xat
        0x6t
        0xf7t
        0x6t
        0xfat
        0xf7t
        0xc4t
        0x33t
        0x14t
        0xft
        0xfet
        0x0t
        0x0t
        0x6t
        0xf3t
        0xbct
        0x58t
        0xf3t
        0x4t
        0x1t
        0xb5t
        0x54t
        0x2t
        0xf6t
        0x4t
        0x1t
        0xb5t
        0x53t
        0xf4t
        0x9t
        0xf5t
        0x9t
        0x6t
        0xb3t
        0x57t
        0xect
        0xct
        0xfet
        0xfct
        0xbdt
        0x47t
        0xat
        0x4t
        0xaft
        0xf2t
        0x1et
        0xfbt
        0x3t
        0xat
        0x6t
        0xf7t
        0x6t
        0xfat
        0xf7t
        0xc4t
        0x33t
        0x14t
        0xft
        0xfet
        0x0t
        0x0t
        0x6t
        0xf3t
        0xbct
        0x4at
        0xbt
        0xaet
        0x54t
        0x2t
        0xf6t
        0x4t
        0x1t
        0xb5t
        0x57t
        0xf0t
        0xet
        0x8t
        0xa8t
        0x47t
        0xdt
        0xf4t
        0xft
        0xf6t
        0xc7t
        0xf2t
        0x1et
        0xfbt
        0x3t
        0xat
        0x6t
        0xf7t
        0x6t
        0xfat
        0xf7t
        0xc4t
        0x34t
        0xft
        0x16t
        0xf4t
        0x6t
        0xfat
        0xbat
        0x44t
        0xfft
        0x3t
        0x6t
        0xfet
        0xbct
        0x47t
        0x4t
        0x4t
        0xfat
        0xd6t
        0xe7t
        0xf2t
        0x1et
        0xfbt
        0x3t
        0xat
        0x6t
        0xf7t
        0x6t
        0xfat
        0xf7t
        0xc4t
        0x24t
        0x1ft
        0x3t
        0x6t
        0xfet
        0xbct
        0x57t
        0xect
        0xct
        0xfet
        0xfct
        0xdct
        0xe2t
        0x1et
        0xe4t
        0xf2t
        0x1et
        0xfbt
        0x3t
        0xat
        0x6t
        0xf7t
        0x6t
        0xfat
        0xf7t
        0xc4t
        0x33t
        0x14t
        0xft
        0xfet
        0x0t
        0x0t
        0x6t
        0xf3t
        0xbct
        0x58t
        0xf3t
        0x4t
        0x1t
        0xb5t
        0x43t
        0x4t
        0xbct
        0x53t
        0xf4t
        0x2t
        0xdt
        0xf4t
        0xft
        0xf6t
        0xfet
        0x0t
        0xbdt
        0x43t
        0x4t
        0xfft
        0xfft
        0x15t
        0xfft
        0xf3t
        0xbct
        0x50t
        0x8t
        0xf0t
        0xet
        0xaft
        0x12t
        0xfft
        0x5t
        0x0t
        0xeft
        0x50t
        0xf8t
        0xbbt
        0x4at
        0xct
        0x0t
        0xaet
        0x57t
        0xect
        0xct
        0xfet
        0xfct
        0x6t
        0xct
        0x6t
        0xa8t
        0x45t
        0x12t
        0xfet
        0xf0t
        0x14t
        0xf6t
        0x7t
        0x0t
        0xb3t
        0x4at
        0xbt
        0xaet
        0x46t
        0x8t
        0xf6t
        0x10t
        0x4t
        0xf3t
        0x0t
        0xcbt
        0xf2t
        0x1et
        0xfbt
        0x3t
        0xat
        0x6t
        0xf7t
        0x6t
        0xfat
        0xf7t
        0xc4t
        0x2ft
        0x22t
        0xb2t
        0x44t
        0xfft
        0x3t
        0x6t
        0xfet
        0xbct
        0x47t
        0x4t
        0x4t
        0xfat
        0xd6t
        0xe7t
        0xf2t
        0x1et
        0xfbt
        0x3t
        0xat
        0x6t
        0xf7t
        0x6t
        0xfat
        0xf7t
        0xc4t
        0x25t
        0x22t
        0x8t
        0xfat
        0x10t
        0xf6t
        0x6t
        0xfat
        0xbat
        0x4ft
        0x2t
        0x0t
        0xc0t
        0x4at
        0xect
        0xct
        0xfet
        0xfct
        0xbdt
        0x44t
        0xfft
        0x3t
        0x6t
        0xfet
        0xbct
        0x47t
        0x4t
        0x4t
        0xfat
        0xd6t
        0xe7t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static 鷭(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 20

    .line 218
    if-eqz p2, :cond_4

    if-nez p3, :cond_6

    .line 219
    :cond_4
    const/4 v0, 0x0

    return-object v0

    .line 223
    :cond_6
    :try_start_6
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhVnme5F9/mHesMMVB/T5n1DLfl34qGhB/ySQ3HyodbCn0YL1qpMmrdeqrXCtfN7SG1zKY1HoJ3gD3hHWa6zMDTvDa/Z2G5T/Niuy2gl4vQXQyqHdHpTt+NsENQS6h/J3ilTU55cQ+bWNqmNm75blet+nV6BsvZJHUNaBDNLNI+D3T/fIiSe1X8Al1597ozjZomPMKIs+c1b+MyyKvDidEILq1KhrMTIB5g3h2Gh/UEQRm4A2XMzUNHdExEmT/EM8506/iYAAMOAfjTFJ2PGSomEElKT/f2rmnIDzvBF/5fg9sGDZgZ+WMgSaMzVFsqRAyINAoYPIBWZfCBPEtQN7CwIDAQAB"

    invoke-static {v0}, Lo/둆;->鷭(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5

    .line 224
    move-object/from16 v0, p3

    invoke-static {v0}, Lo/COn;->鷭(Ljava/lang/String;)[B

    move-result-object p3

    .line 243
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v1, v5}, Lo/둆;->鷭(Ljava/lang/String;[BLjava/security/PublicKey;)Z

    move-result v0

    if-nez v0, :cond_1e
    :try_end_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_1c} :catch_197
    .catch Lo/庸; {:try_start_6 .. :try_end_1c} :catch_19e
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_1c} :catch_1a5

    .line 244
    const/4 v0, 0x0

    return-object v0

    .line 246
    :cond_1e
    :try_start_1e
    new-instance p3, Landroid/text/TextUtils$SimpleStringSplitter;

    move-object/from16 v0, p3

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object/from16 v0, p2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_44

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank response."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    move-object/from16 v0, p2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 p3, v0

    const-string v5, ""

    move-object/from16 v0, p2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    move-object/from16 v0, p2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    :cond_61
    const-string v0, "|"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    move-object/from16 v0, p2

    array-length v0, v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_7b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong number of fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7b
    new-instance p3, Lo/䌮;

    move-object/from16 v0, p3

    invoke-direct {v0}, Lo/䌮;-><init>()V

    move-object/from16 v0, p3

    iput-object v5, v0, Lo/䌮;->Ć:Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, p3

    iput v0, v1, Lo/䌮;->鷭:I

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-object/from16 v2, p3

    iput-wide v0, v2, Lo/䌮;->櫯:J

    const/4 v0, 0x2

    aget-object v0, p2, v0

    move-object/from16 v1, p3

    iput-object v0, v1, Lo/䌮;->ˮ͈:Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, p2, v0

    move-object/from16 v1, p3

    iput-object v0, v1, Lo/䌮;->ȃ:Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, p2, v0

    move-object/from16 v1, p3

    iput-object v0, v1, Lo/䌮;->Ą:Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-object/from16 v2, p3

    iput-wide v0, v2, Lo/䌮;->ą:J

    .line 248
    move-object/from16 p2, p3

    move-object/from16 v0, p3

    iget-wide v0, v0, Lo/䌮;->櫯:J

    cmp-long v0, v0, p0

    if-eqz v0, :cond_c8
    :try_end_c6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1e .. :try_end_c6} :catch_197
    .catch Lo/庸; {:try_start_1e .. :try_end_c6} :catch_19e
    .catch Ljava/security/InvalidKeyException; {:try_start_1e .. :try_end_c6} :catch_1a5

    .line 249
    const/4 v0, 0x0

    return-object v0

    .line 250
    :cond_c8
    :try_start_c8
    move-object/from16 v0, p2

    iget-object v0, v0, Lo/䌮;->ˮ͈:Ljava/lang/String;

    const-string v1, "com.keramidas.TitaniumBackupPro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6
    :try_end_d4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c8 .. :try_end_d4} :catch_197
    .catch Lo/庸; {:try_start_c8 .. :try_end_d4} :catch_19e
    .catch Ljava/security/InvalidKeyException; {:try_start_c8 .. :try_end_d4} :catch_1a5

    .line 251
    const/4 v0, 0x0

    return-object v0

    .line 252
    :cond_d6
    :try_start_d6
    move-object/from16 v0, p2

    iget v0, v0, Lo/䌮;->鷭:I

    if-eqz v0, :cond_e5

    move-object/from16 v0, p2

    iget v0, v0, Lo/䌮;->鷭:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e5
    :try_end_e3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d6 .. :try_end_e3} :catch_197
    .catch Lo/庸; {:try_start_d6 .. :try_end_e3} :catch_19e
    .catch Ljava/security/InvalidKeyException; {:try_start_d6 .. :try_end_e3} :catch_1a5

    .line 253
    const/4 v0, 0x0

    return-object v0

    .line 255
    :cond_e5
    :try_start_e5
    move-object/from16 v0, p2

    iget-object v0, v0, Lo/䌮;->Ć:Ljava/lang/String;

    invoke-static {v0}, Lo/纲;->鷭(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 257
    move-object/from16 v0, p2

    iget-wide v6, v0, Lo/䌮;->ą:J
    :try_end_f1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e5 .. :try_end_f1} :catch_197
    .catch Lo/庸; {:try_start_e5 .. :try_end_f1} :catch_19e
    .catch Ljava/security/InvalidKeyException; {:try_start_e5 .. :try_end_f1} :catch_1a5

    .line 261
    :try_start_f1
    const-string v0, "VT"

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 262
    move-wide v8, v0

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_116

    const-wide v0, 0xa4cb8000L

    cmp-long v0, v8, v0

    if-gez v0, :cond_116

    .line 265
    const-wide v8, 0xa4cb8000L
    :try_end_116
    .catch Ljava/lang/NumberFormatException; {:try_start_f1 .. :try_end_116} :catch_117
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f1 .. :try_end_116} :catch_197
    .catch Lo/庸; {:try_start_f1 .. :try_end_116} :catch_19e
    .catch Ljava/security/InvalidKeyException; {:try_start_f1 .. :try_end_116} :catch_1a5

    .line 272
    :cond_116
    :try_start_116
    goto :goto_11b

    .line 268
    :catch_117
    move-exception v10

    .line 271
    const-wide/32 v8, 0x493e0

    .line 273
    :goto_11b
    add-long v10, v6, v8

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 298
    sub-long v0, v10, v12

    .line 299
    move-wide v14, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_187

    .line 301
    sget-object v0, Lo/둆;->Ą:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, -0x2c

    const/16 v4, 0x71

    invoke-static {v2, v3, v4}, Lo/둆;->鷭(III)Ljava/lang/String; #[Licensing] Response will still remain valid for

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, v14, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds according to server policy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sub-long v0, v12, v6

    const-wide/16 v2, 0x20

    div-long v2, v8, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_160

    const/16 p0, 0x1

    goto :goto_162

    :cond_160
    const/16 p0, 0x0

    .line 304
    :goto_162
    if-eqz p0, :cond_172

    .line 305
    sget-object v0, Lo/둆;->Ą:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x101

    invoke-static {v1, v2, v3}, Lo/둆;->鷭(III)Ljava/lang/String; #[ 09-04 14:38:19.928  1284: 1284 E/[Licensing] Response will be refreshed because over 1/32 of its validity duration is elapsed[Licensing] Response will be refreshed because over 1/32 of its validity duration is elapsed.

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_180

    .line 307
    :cond_172
    sget-object v0, Lo/둆;->Ą:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, -0x34

    const/16 v3, 0xa1

    invoke-static {v1, v2, v3}, Lo/둆;->鷭(III)Ljava/lang/String; #[Licensing] Response is still very fresh.

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_180
    move/from16 v0, p0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_186
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_116 .. :try_end_186} :catch_197
    .catch Lo/庸; {:try_start_116 .. :try_end_186} :catch_19e
    .catch Ljava/security/InvalidKeyException; {:try_start_116 .. :try_end_186} :catch_1a5

    return-object v0

    .line 313
    :cond_187
    :try_start_187
    sget-object v0, Lo/둆;->Ą:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, -0x33

    const/16 v3, 0x48

    invoke-static {v1, v2, v3}, Lo/둆;->鷭(III)Ljava/lang/String; #[ 09-04 14:38:19.928  1284: 1284 E/(602;@6;4*í2@=<;@2í6@í@A699íC2?Fí3?2@5ûì		ýÀó	ÀÀ	ÚÀ±ÎÈ�(602;@6;4*í2@=<;@2í6@í@A699íC2?Fí3?2@5ûì		ýÀó	ÀÀ	ÚÀ±ÎÈÊÓØÎÓÌÂ¨ÆÈÍÊÛÆÑÎÉ¤¢vJ|J¡JJJJ J[Y]\JJJ 

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_195
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_187 .. :try_end_195} :catch_197
    .catch Lo/庸; {:try_start_187 .. :try_end_195} :catch_19e
    .catch Ljava/security/InvalidKeyException; {:try_start_187 .. :try_end_195} :catch_1a5

    .line 314
    const/4 v0, 0x0

    return-object v0

    .line 317
    :catch_197
    move-exception v5

    .line 319
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 321
    :catch_19e
    move-exception v5

    .line 323
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 331
    :catch_1a5
    move-exception v5

    .line 333
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static 鷭(III)Ljava/lang/String;
    .registers 9

    sget-object v4, Lo/둆;->ć:[B

    add-int/lit8 p1, p1, 0x5d

    add-int/lit8 p0, p0, 0x5b

    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    new-array v1, p1, [B

    if-nez v4, :cond_14

    move v2, p1

    move v3, p2

    :goto_f
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v2, v3

    add-int/lit8 p0, v2, -0x1

    :cond_14
    int-to-byte v2, p0

    aput-byte v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    if-lt v5, p1, :cond_20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object v0

    :cond_20
    move v2, p0

    aget-byte v3, v4, p2

    goto :goto_f
.end method

.method private static 鷭(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeSet;Z)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;Z)Ljava/lang/String;"
        }
    .end annotation

    .line 571
    :try_start_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lo/㼛;->鷭(Ljava/lang/String;Ljava/lang/String;ZZ)Lo/窆;

    move-result-object p1

    .line 572
    if-nez p1, :cond_a
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_a0

    .line 573
    const/4 v0, 0x0

    return-object v0

    .line 575
    :cond_a
    :try_start_a
    iget-object v0, p1, Lo/窆;->ˮ͈:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lo/둆;->鷭([B)[B

    move-result-object p2

    .line 577
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    move-object v3, p2

    array-length v4, p2

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v4, :cond_33

    aget-byte v6, v3, v5

    .line 579
    and-int/lit16 v0, v6, 0xff

    add-int/lit16 v0, v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 581
    :cond_33
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_3d} :catch_a0

    const/4 v0, 0x0

    return-object v0

    .line 583
    .line 584
    :cond_3f
    :try_start_3f
    move-object v0, p0

    move-object p0, p1

    iget-object v1, p1, Lo/窆;->ȃ:Ljava/lang/String;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lo/窆;->ȃ:Ljava/lang/String;

    goto :goto_4a

    :cond_48
    const-string v1, "edaf9e1163b4"

    :goto_4a
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 587
    if-nez v3, :cond_55
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_53} :catch_a0

    .line 588
    const/4 v0, 0x0

    return-object v0

    .line 590
    :cond_55
    :try_start_55
    iget-object p0, p1, Lo/窆;->Ą:Ljava/lang/String;

    new-instance p3, Ljava/math/BigInteger;

    const/16 v0, 0x10

    invoke-direct {p3, v3, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object p0, v0

    sget-object v1, Lo/둆;->Ć:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, p3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/16 p3, 0x14

    array-length v0, p0

    add-int/lit8 p3, v0, -0x15

    if-gez p3, :cond_79

    const/4 v4, 0x0

    goto :goto_86

    :cond_79
    const/16 v0, 0x14

    new-array p4, v0, [B

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-static {p0, v0, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, p4

    .line 591
    :goto_86
    array-length v0, v4

    const/16 v1, 0x14

    if-eq v0, v1, :cond_8d
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_8b} :catch_a0

    const/4 v0, 0x0

    return-object v0

    .line 592
    :cond_8d
    :try_start_8d
    const/4 v5, 0x0

    :goto_8e
    const/16 v0, 0x14

    if-ge v5, v0, :cond_9d

    .line 593
    aget-byte v0, v4, v5

    aget-byte v1, p2, v5

    if-eq v0, v1, :cond_9a
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_98} :catch_a0

    .line 594
    const/4 v0, 0x0

    return-object v0

    .line 592
    :cond_9a
    :try_start_9a
    add-int/lit8 v5, v5, 0x1

    goto :goto_8e

    .line 596
    :cond_9d
    iget-object v0, p1, Lo/窆;->ˮ͈:Ljava/lang/String;
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9f} :catch_a0

    return-object v0

    .line 598
    :catch_a0
    move-exception p1

    .line 600
    const/4 v0, 0x0

    return-object v0
.end method

.method private static 鷭(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4

    .line 126
    :try_start_0
    invoke-static {p0}, Lo/COn;->鷭(Ljava/lang/String;)[B

    move-result-object p0

    .line 129
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 130
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 135
    const/4 v0, 0x0

    aget-byte v0, v2, v0

    const/16 v1, -0x10

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    aget-byte v0, v2, v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_25

    .line 136
    :cond_1c
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    .line 138
    :cond_25
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 139
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_34
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_34} :catch_35
    .catch Lo/庸; {:try_start_0 .. :try_end_34} :catch_3c
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_34} :catch_43

    return-object v0

    .line 141
    :catch_35
    move-exception p0

    .line 143
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 145
    :catch_3c
    move-exception p0

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 149
    :catch_43
    move-exception p0

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static 鷭(Lcom/keramidas/TitaniumBackup/MainActivity$櫯;Ljava/lang/Runnable;)V
    .registers 14

    .line 372
    sget-object v5, Lcom/keramidas/TitaniumBackup/MainApplication;->岱:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v10, v0

    const-string v0, "phone"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_20

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v10, v0

    :cond_20
    invoke-static {}, Lo/圊$鷭;->鷭()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2c

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v10, v0

    :cond_2c
    move-wide v5, v10

    .line 374
    sget-object v0, Lcom/keramidas/TitaniumBackup/MainApplication;->岱:Landroid/content/Context;

    invoke-static {v0}, Lo/魧;->鷭(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    .line 375
    if-eqz v7, :cond_90

    .line 377
    new-instance v0, Ljava/io/File;

    const-string v1, "licensing-cache.xml"

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v0

    .line 378
    sget-object v0, Lcom/keramidas/TitaniumBackup/MainApplication;->岱:Landroid/content/Context;

    invoke-static {v5, v6, v7, v0}, Lo/둆;->鷭(JLjava/io/File;Landroid/content/Context;)Z

    move-result v8

    .line 379
    sget-object v0, Lo/둆;->Ą:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, -0x42

    const/16 v4, 0xe7

    invoke-static {v2, v3, v4}, Lo/둆;->鷭(III)Ljava/lang/String; #[Licensing] Cache valid? =

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz v8, :cond_69

    .line 382
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/둆;->鷭(Ljava/lang/Runnable;Z)V

    .line 383
    return-void

    .line 387
    :cond_69
    sget-object v0, Lo/둆;->Ą:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, -0x32

    const/16 v4, 0x177

    invoke-static {v2, v3, v4}, Lo/둆;->鷭(III)Ljava/lang/String; #[Licensing] Deleting non-valid cache file: 

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 390
    goto :goto_91

    .line 393
    :cond_90
    const/4 v7, 0x0

    .line 396
    :goto_91
    const/4 v8, 0x0

    .line 400
    :try_start_92
    sget-object v0, Lcom/keramidas/TitaniumBackup/MainApplication;->岱:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 411
    const-string v0, "com.keramidas.TitaniumBackupPro"

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 412
    const/4 v8, 0x1
    :try_end_9f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_92 .. :try_end_9f} :catch_a0

    .line 417
    goto :goto_a1

    .line 414
    :catch_a0
    move-exception v9

    .line 418
    :goto_a1
    if-nez v8, :cond_a8

    .line 420
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/둆;->鷭(Ljava/lang/Runnable;Z)V

    .line 421
    return-void

    .line 435
    :cond_a8
    sget-object v0, Lcom/keramidas/TitaniumBackup/MainApplication;->岱:Landroid/content/Context;

    invoke-static {v5, v6, v7, p0, v0}, Lo/둆;->鷭(JLjava/io/File;Lcom/keramidas/TitaniumBackup/MainActivity$櫯;Landroid/content/Context;)Z

    move-result v9

    .line 436
    invoke-static {p1, v9}, Lo/둆;->鷭(Ljava/lang/Runnable;Z)V

    .line 437
    return-void
.end method

.method private static 鷭(Ljava/lang/Runnable;Z)V
    .registers 5

    .line 441
    if-eqz p1, :cond_11

    .line 443
    const/4 v0, 0x1

    invoke-static {v0}, Lo/둆;->鷭(Z)V

    .line 444
    const/4 v0, 0x1

    sput-boolean v0, Lo/둆;->櫯:Z

    .line 445
    new-instance v0, Lo/䬦;

    invoke-direct {v0}, Lo/䬦;-><init>()V

    sput-object v0, Lo/둆;->ˮ͈:Lo/䬦;

    goto :goto_37

    .line 449
    :cond_11
    sget-object v0, Lcom/keramidas/TitaniumBackup/MainApplication;->岱:Landroid/content/Context;

    invoke-static {v0}, Lo/둆;->鷭(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lo/둆;->鷭(Z)V

    .line 450
    invoke-static {}, Lo/둆;->鷭()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "95116f196c3b"

    sget-object p1, Lo/둆;->ˮ͈:Lo/䬦;

    const-string v2, "keyId"

    invoke-virtual {p1, v2}, Lo/䬦;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    sput-boolean v0, Lo/둆;->鷭:Z

    .line 452
    :goto_37
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 453
    return-void
.end method

.method public static 鷭(Ljava/util/Map;)V
    .registers 2

    .line 457
    invoke-static {}, Lo/둆;->鷭()Z

    move-result v0

    if-nez v0, :cond_9

    .line 458
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 459
    :cond_9
    return-void
.end method

.method private static 鷭(Z)V
    .registers 3

    .line 92
    if-eqz p0, :cond_2d

    sget-object v0, Lcom/keramidas/TitaniumBackup/MainApplication;->岱:Landroid/content/Context;

    invoke-static {v0}, Lo/Ǎ$櫯$鷭;->鷭(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x1

    goto :goto_29

    :cond_c
    sget-object v0, Lcom/keramidas/TitaniumBackup/MainApplication;->岱:Landroid/content/Context;

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/keramidas/TitaniumBackup/MainActivity;->鷭(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, 0x27e73b96

    if-ne p0, v0, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    if-eqz p0, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    sput-boolean v0, Lo/둆;->ą:Z

    .line 93
    return-void
.end method

.method public static 鷭()Z
    .registers 1

    .line 87
    sget-boolean v0, Lo/둆;->ą:Z

    return v0
.end method

.method private static 鷭(JLjava/io/File;Landroid/content/Context;)Z
    .registers 11

    .line 159
    :try_start_0
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 160
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5, v0}, Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V

    .line 161
    const-string v0, "signedData"

    invoke-virtual {v5, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 162
    const-string v0, "signature"

    invoke-virtual {v5, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 163
    sget-object v0, Lo/둆;->Ą:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, -0x33

    const/16 v3, 0x1f

    invoke-static {v1, v2, v3}, Lo/둆;->鷭(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {p0, p1, v6, v5}, Lo/둆;->鷭(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 165
    if-eqz v5, :cond_34

    const/4 v6, 0x1

    goto :goto_35

    :cond_34
    const/4 v6, 0x0

    .line 168
    :goto_35
    if-eqz v6, :cond_40

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 170
    invoke-static {p2, p0, p1, p3}, Lo/纲;->鷭(Ljava/io/File;JLandroid/content/Context;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_40} :catch_41
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_40} :catch_66

    .line 173
    :cond_40
    return v6

    .line 175
    :catch_41
    move-exception v5

    .line 177
    sget-object v0, Lo/둆;->Ą:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, -0x42

    const/16 v4, 0x15d

    invoke-static {v2, v3, v4}, Lo/둆;->鷭(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    goto :goto_89

    .line 179
    :catch_66
    move-exception v5

    .line 181
    sget-object v0, Lo/둆;->Ą:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, -0x3d

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lo/둆;->鷭(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_89
    const/4 v0, 0x0

    return v0
.end method

.method public static 鷭(JLjava/io/File;Lcom/keramidas/TitaniumBackup/MainActivity$櫯;Landroid/content/Context;)Z
    .registers 11

    .line 188
    invoke-static {p0, p1, p3, p4}, Lo/纲;->鷭(JLcom/keramidas/TitaniumBackup/MainActivity$櫯;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p3

    .line 189
    const-string v0, "signedData"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "signature"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lo/둆;->鷭(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    .line 190
    :goto_19
    if-eqz p0, :cond_79

    .line 194
    :try_start_1b
    if-eqz p2, :cond_74

    .line 196
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    .line 197
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2a
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 198
    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2a

    .line 199
    :cond_3f
    sget-object v0, Lo/둆;->Ą:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, -0x3e

    const/16 v4, 0xc9

    invoke-static {v2, v3, v4}, Lo/둆;->鷭(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance p4, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p4, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 201
    const-string v0, ""

    invoke-virtual {p1, p4, v0}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_74} :catch_75

    .line 208
    :cond_74
    goto :goto_79

    .line 205
    :catch_75
    move-exception p1

    .line 207
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    :cond_79
    :goto_79
    return p0
.end method

.method private static 鷭(Landroid/content/Context;)Z
    .registers 8

    .line 463
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 466
    const-string v0, "edaf9e1163b4"

    const-string v1, "316558156c1d84bb651de792c5a859e68a64a848f63284773f9eda78f2cba3918058f8d2c5ba56240bbba568a474b53d2c12567f1f890c117d2315f8a9c18c7abff8fce628ed44c6d535496139c694d4ca76e0f16f1918646bb471dfdda5a7b933e26973390c0644cb92af35a0609c3770bde23eb85f821007a4d4080ae08b23a63657f9745e5a5621ac5b0be020c70b849b0129ed5d8ca53da1d59909af6b2005c87282fde4058948c9a01cd0d702d2472fbbaaca8f4f83a1f99141688333e7f80cb028ca2fd842f8b87609efff0d02d957ad1be1acae2501f82358f3c1e321d00c1d2d143ca8edd5f5d7d12d330557dc418f888c2d454e6eb1df743fdfa4dc3721"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string v0, "95116f196c3b"

    const-string v1, "2c668440cae57384bea119466e02f8ef3987d532e0b626c7190f60839ab951a4e07344e1ae57410951ddb203ac7c6f6356e7b2d5a41dc1566eb9c5efec259bd32c191061e40722da9b5fe358e5ffdd497ca66831cdf2cfc1ddf253fb62c492709c4ff9cbc9d8242e6d862ed815fdd75cfa80d90a47ffdf25b68556e1f3e2f448f36838d46fe15b84083d3411c42ebad2081fee0422b54e975b9c8228521206230538f2118d9fd5094805ffa87269092f0920b27728ad10a603e118b423f3842fb6de19553b592b4063ae3a959864373fd047f149b61a89dbeec8498aacc7ea748393c08863efce48f15f493dce2be36c0f16ad0c083fff668d6c6df7e96beccbb4cb"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v0, "e21dea8ca1aa"

    const-string v1, "2674fdf7ee9de84fa22c1b5d7daa61e1ca907b5bf831d9cee6288f99e6be4ecdfdc64ff18fa1f23c34d63e14d0bf4b4fe1560d7294c7b16c707731976ad4fabee10e75856cc7c39393503e0afb1ffbca9ccc62202034093f1e19e49e7dd73183fbc7c7a21488cf14a9f63180d0036d13783ec770adddc2064700e68017e577f2bf290f7f76cd84ba9ddefeb5d11962ffb19b15da34580bb719396e6ac9990fe758e5f2ec0d60a63b19a5ffe7584ba382c8e3210453c2ac1dd44189ed74358f5bd8b6f672e95fb5cb55db3da0c45ca469bcd82dd28033b1c5fa36fd781fefb7213cdad524351cfd7dee513c85bacc94975c4a30aa556b825c7efbd033e44508f59b4d"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 477
    const-string v0, "684c8d438a0de4087b4c73c76eff5fb8fb4b3791"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 478
    const-string v0, "cdda02328a62e87cc5c863fe4e0e49e4c8fc3380"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 479
    const-string v0, "8b47349b811e7c7a87a355eb50143837175e6ca4"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 480
    const-string v0, "b9fcf9adbf1b788081048afc9db99a713710290a"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 481
    const-string v0, "e9c88b887220d5178df226a53b8b965bc847c1ae"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 482
    const-string v0, "6036c83751d6d154efbef57c6388e0fa27d7e002"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 483
    const-string v0, "d54ccf4123230df11b0d68710965687578d6c7e2"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 484
    const-string v0, "6e1c9ea7240a18977e4fb851a8820b3132fd484c"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 485
    const-string v0, "88f020dcab4faaa9b4e4b80282f8a52f182d563e"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 486
    const-string v0, "5a57c7220af6d51e7e74875163a7964590a471fa"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 490
    const-string v0, "00723cdf8c252cbf9d17f743694f0a0045f421f6"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 493
    const-string v0, "5471e666cea5047af1daaac4dc8b69b38e98d656"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 496
    const-string v0, "802df399351c4658e691078c3b9d0fd154b8cfcf"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 500
    const-string v0, "07e1dfd8cf4e7500b2e06da64a78035c9f355e1c"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 501
    const-string v0, "9b4c83875d87f85a6576fcc33a2fa4f09506cac9"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 502
    const-string v0, "eca1bce25e048901f8aaed89aae86dfa4c50e0a2"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 503
    const-string v0, "8a8bfcff6ffb3eaa0fa4bd6fd14ce0d566063385"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 504
    const-string v0, "310fd799aade771b0af1f60e6bfcdbe54e0e20ba"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 507
    const-string v0, "ff00851a76e68bb8d7b3258bb1ffe9e085dcd246"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 508
    const-string v0, "f6b97a5a2b02df5dfaefb9074ccf57d5bfc9c5f8"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 511
    const-string v0, "722d7737880df94766a4d523b41f147a964ee9c7"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 512
    const-string v0, "6c415ab029c02ef409258c1bece835a38912471b"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 513
    const-string v0, "584c2b0b95f470a3c5e49f4bd3f8bfd3bcea5b14"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 514
    const-string v0, "67cff425d152cd0925374e949f8cb84094684eda"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 515
    const-string v0, "9cf3714028d7cae18b63f9c73d91e11e76354df0"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 516
    const-string v0, "ed24c07ec45be988cefec35da9e25ed99de1f546"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 517
    const-string v0, "33546c3f2faa50d6f7814828178a959fe13f6b75"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 518
    const-string v0, "4a5d5cfcc6abe6027051195593a9ca89b6c8b906"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 521
    const-string v0, "cec2712f47bb1cddb1936e318f062d3fd1f8bb57"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 522
    const-string v0, "d3790a204deec51e64fbff77e9ade4949fe6fd77"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 523
    const-string v0, "ab8b7b0a884b31b97abb041142b85803df6b2e01"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-static {p0}, Lo/㼛;->鷭(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 528
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    const/4 v2, 0x0

    invoke-static {v3, v0, v1, v4, v2}, Lo/둆;->鷭(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeSet;Z)Ljava/lang/String;

    move-result-object p0

    .line 529
    if-nez p0, :cond_cd

    .line 530
    const/4 v0, 0x0

    return v0

    .line 535
    :cond_cd
    const/16 v5, 0x2f

    .line 536
    const/16 v5, -0x4c

    .line 539
    :try_start_d1
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 540
    new-instance v0, Ljava/util/TreeSet;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 541
    const-string v0, "UTF-8"

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_e4

    .line 542
    :cond_fb
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ff
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_116

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 543
    const-string v0, "UTF-8"

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_ff

    .line 545
    :cond_116
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 550
    const/4 v0, 0x0

    aget-byte v0, v3, v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_128

    const/4 v0, 0x1

    aget-byte v0, v3, v0

    const/16 v1, -0x4c

    if-eq v0, v1, :cond_12a
    :try_end_128
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d1 .. :try_end_128} :catch_12b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d1 .. :try_end_128} :catch_132

    .line 551
    :cond_128
    const/4 v0, 0x0

    return v0

    .line 560
    :cond_12a
    goto :goto_139

    .line 553
    :catch_12b
    move-exception v5

    .line 555
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 557
    :catch_132
    move-exception v5

    .line 559
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 562
    :goto_139
    new-instance v0, Lo/䬦;

    invoke-direct {v0}, Lo/䬦;-><init>()V

    .line 563
    sput-object v0, Lo/둆;->ˮ͈:Lo/䬦;

    invoke-virtual {v0, p0}, Lo/䬦;->鷭(Ljava/lang/String;)V

    .line 564
    const/4 v0, 0x1

    return v0
.end method

.method private static 鷭(Ljava/lang/String;[BLjava/security/PublicKey;)Z
    .registers 8

    .line 341
    :try_start_0
    const-string v0, "RSA/NONE/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 342
    const/4 v0, 0x2

    invoke-virtual {v2, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 343
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 344
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    .line 345
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 346
    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 348
    array-length v0, p1

    array-length v1, p0

    sub-int p2, v0, v1

    .line 349
    if-gez p2, :cond_27
    :try_end_25
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_25} :catch_3b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_25} :catch_42
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_25} :catch_45

    .line 350
    const/4 v0, 0x0

    return v0

    .line 351
    :cond_27
    :try_start_27
    array-length v2, p0

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v2, :cond_39

    aget-byte v4, p0, v3

    .line 352
    move v0, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, v0

    if-eq v4, v0, :cond_36
    :try_end_34
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_27 .. :try_end_34} :catch_3b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_27 .. :try_end_34} :catch_42
    .catch Ljavax/crypto/BadPaddingException; {:try_start_27 .. :try_end_34} :catch_45

    .line 353
    const/4 v0, 0x0

    return v0

    .line 351
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 354
    :cond_39
    const/4 v0, 0x1

    return v0

    .line 356
    :catch_3b
    move-exception v2

    .line 358
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 360
    :catch_42
    move-exception v2

    .line 362
    const/4 v0, 0x0

    return v0

    .line 364
    :catch_45
    move-exception v2

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method private static 鷭([B)[B
    .registers 4

    .line 609
    :try_start_0
    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_7

    .line 614
    goto :goto_e

    .line 611
    :catch_7
    move-exception p0

    .line 613
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 615
    :goto_e
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 616
    sget-boolean v0, Lo/둆;->ȃ:Z

    if-nez v0, :cond_21

    array-length v0, p0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_21

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 617
    :cond_21
    return-object p0
.end method
