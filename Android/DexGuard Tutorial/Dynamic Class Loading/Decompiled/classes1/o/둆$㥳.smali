.class Lo/둆$㥳;
.super Ljava/lang/ClassLoader;


# static fields
.field private static final Ą:[B


# instance fields
.field private ȃ:Ljava/lang/Object;


# direct methods
.method static <clinit>()V
    .registers 3

    const/16 v0, 0xe1

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lo/둆$㥳;->Ą:[B

    return-void

    :array_a
    .array-data 0x1
        0x4t
        0x4t
        0x6t
        0x8t
        0xfat
        0xe1t
        0x2ct
        0xf8t
        0x15t
        0x3t
        0xfat
        0x18t
        0xeet
        0x1at
        0xb9t
        0x38t
        0x12t
        0xat
        0xfat
        0x7t
        0xfet
        0xc2t
        0x18t
        0x29t
        0xat
        0xfbt
        0x0t
        0x10t
        0xfat
        0x18t
        0xeet
        0x1at
        0xb9t
        0x38t
        0x12t
        0xat
        0xfat
        0x7t
        0xfet
        0xc2t
        0x48t
        0x0t
        0xf8t
        0x1t
        0xcet
        0x1et
        0x30t
        0xddt
        0x14t
        0x14t
        0xf2t
        0xft
        0xfbt
        0x12t
        0xf4t
        0x10t
        0xe4t
        0x20t
        0xf8t
        0x1t
        0x8t
        0xfet
        0xet
        0x6t
        0xf5t
        0x6t
        0xe2t
        0x2ct
        0xf8t
        0x15t
        0x3t
        0xfat
        0x18t
        0xeet
        0xd0t
        0x48t
        0xf5t
        0x1t
        0x15t
        0x0t
        0xfat
        0xet
        0x8t
        0xb8t
        0x20t
        0x1dt
        0x17t
        0x1t
        0x12t
        0xd8t
        0x28t
        0x8t
        0x4t
        0xf0t
        0x10t
        0xf8t
        0x5t
        0x0t
        0xet
        0xdt
        0xf6t
        0x5t
        0xc6t
        0x48t
        0x9t
        0xfdt
        0x4t
        0xf4t
        0xbt
        0xc4t
        0x19t
        0x24t
        0x16t
        0xd1t
        0x26t
        0x6t
        0xfct
        0xfat
        0x18t
        0xeet
        0xd0t
        0x41t
        0xf8t
        0x10t
        0xfct
        0xcat
        0x18t
        0x2ct
        0xf8t
        0x15t
        0x3t
        0xdct
        0x26t
        0xf5t
        0x6t
        0x4t
        0x10t
        0x4t
        0x11t
        0x4t
        0x11t
        0xdft
        0x17t
        0x6t
        0xfft
        0xf0t
        0x22t
        0x24t
        0xe4t
        0x14t
        0x6t
        0x3t
        0x8t
        0x8t
        0xfct
        0xfat
        0x18t
        0xeet
        0xd0t
        0x48t
        0xf5t
        0x1t
        0x15t
        0x0t
        0xfat
        0xet
        0x8t
        0xb8t
        0x48t
        0x0t
        0xf8t
        0x1t
        0xcet
        0x16t
        0x2et
        0xfet
        0xbt
        0x6t
        0xfat
        0xet
        0xf7t
        0x8t
        0xe6t
        0x14t
        0x14t
        0xf2t
        0xft
        0xfbt
        0x12t
        0xf4t
        0x10t
        0xe4t
        0x20t
        0xf8t
        0x1t
        0xfat
        0x18t
        0xeet
        0x1at
        0xb9t
        0x38t
        0x12t
        0xat
        0xfat
        0x7t
        0xfet
        0xc2t
        0x48t
        0x0t
        0xf8t
        0x1t
        0xcet
        0x28t
        0x15t
        0x1t
        0x12t
        0xf6t
        0x12t
        0xdat
        0x1dt
        0x17t
        0xddt
        0x20t
        0xf8t
        0x1t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const-class v0, Lo/둆$㥳;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object p1, p0, Lo/둆$㥳;->ȃ:Ljava/lang/Object;

    return-void
.end method

.method private static ą(III)Ljava/lang/String;
    .registers 9

    sget-object v5, Lo/둆$㥳;->Ą:[B

    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x58

    const/4 v4, 0x0

    add-int/lit8 p1, p1, 0x29

    new-array v1, p1, [B

    if-nez v5, :cond_14

    move v2, p1

    move v3, p0

    :goto_f
    add-int/lit8 p0, p0, 0x1

    add-int/2addr v2, v3

    add-int/lit8 p2, v2, -0x3

    :cond_14
    int-to-byte v2, p2

    aput-byte v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    if-lt v4, p1, :cond_20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object v0

    :cond_20
    move v2, p2

    aget-byte v3, v5, p0

    goto :goto_f
.end method

.method public static ˮ͈()Ljava/lang/Object;
    .registers 8

    const/16 v0, 0x8b

    const/16 v1, -0x18

    const/16 v2, -0x14

    invoke-static {v0, v1, v2}, Lo/둆$㥳;->ą(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :catchall_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :goto_11
    :try_start_11
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0xa

    const/16 v2, -0x16

    const/16 v3, 0x12

    invoke-static {v0, v2, v3}, Lo/둆$㥳;->ą(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v2, 0x57

    const/16 v3, -0x1e

    const/16 v4, 0xf

    invoke-static {v2, v3, v4}, Lo/둆$㥳;->ą(III)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_40
    .catchall {:try_start_11 .. :try_end_40} :catchall_b

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_118

    const/16 v2, 0x89

    const/16 v3, -0x26

    const/16 v4, -0x14

    invoke-static {v2, v3, v4}, Lo/둆$㥳;->ą(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_58

    :catchall_52
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :goto_58
    :try_start_58
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/16 v1, 0xc3

    const/16 v3, -0xa

    const/16 v4, 0x12

    invoke-static {v1, v3, v4}, Lo/둆$㥳;->ą(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, [B

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_84
    .catchall {:try_start_58 .. :try_end_84} :catchall_52

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_120

    goto :goto_92

    :catchall_8c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :goto_92
    :try_start_92
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/16 v2, 0x1c

    const/4 v4, -0x8

    const/16 v5, 0x12

    invoke-static {v2, v4, v5}, Lo/둆$㥳;->ą(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, [B

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_b5
    .catchall {:try_start_92 .. :try_end_b5} :catchall_8c

    goto :goto_bc

    :catchall_b6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :goto_bc
    :try_start_bc
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/16 v1, 0xa

    const/16 v3, -0x16

    const/16 v4, 0x12

    invoke-static {v1, v3, v4}, Lo/둆$㥳;->ą(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v3, 0x3c

    const/16 v4, -0x25

    const/16 v5, 0x11

    invoke-static {v3, v4, v5}, Lo/둆$㥳;->ą(III)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/16 v5, 0x47

    const/16 v6, -0x18

    const/16 v7, 0x12

    invoke-static {v5, v6, v7}, Lo/둆$㥳;->ą(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/16 v5, 0x9b

    const/4 v6, 0x0

    const/16 v7, 0x12

    invoke-static {v5, v6, v7}, Lo/둆$㥳;->ą(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_116
    .catchall {:try_start_bc .. :try_end_116} :catchall_b6

    return-object v0

    nop

    :array_118
    .array-data 0x1
        0x43t
        0x25t
        0xe3t
        0xb6t
        0x25t
        0x76t
        0xa7t
        0xd3t
    .end array-data

    :array_120
    .array-data 0x1
        0x7et
        0x53t
        0x83t
        0x15t
        0x6at
        0x75t
        0xb0t
        0xfdt
    .end array-data
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 10

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lo/둆$㥳;->ȃ:Ljava/lang/Object;

    move-object v7, v0

    :try_start_b
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_6f

    move v7, v0

    goto :goto_19

    :catchall_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :goto_19
    :try_start_19
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const/16 v0, 0x61

    const/16 v2, -0x14

    const/16 v3, 0xc

    invoke-static {v0, v2, v3}, Lo/둆$㥳;->ą(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, -0x1e

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Lo/둆$㥳;->ą(III)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/16 v4, 0x75

    const/16 v5, -0x14

    const/16 v6, 0x12

    invoke-static {v4, v5, v6}, Lo/둆$㥳;->ą(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_6e
    .catchall {:try_start_19 .. :try_end_6e} :catchall_13

    return-object v0

    :catch_6f
    goto :goto_76

    :catchall_70
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :goto_76
    :try_start_76
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const/16 v0, 0x61

    const/16 v2, -0x14

    const/16 v3, 0xc

    invoke-static {v0, v2, v3}, Lo/둆$㥳;->ą(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v2, 0x3f

    const/16 v3, -0x20

    const/16 v4, 0x14

    invoke-static {v2, v3, v4}, Lo/둆$㥳;->ą(III)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/16 v4, 0x75

    const/16 v5, -0x14

    const/16 v6, 0x12

    invoke-static {v4, v5, v6}, Lo/둆$㥳;->ą(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_ba
    .catchall {:try_start_76 .. :try_end_ba} :catchall_70

    return-object v0
.end method

.method ˮ͈(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/둆$㥳;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
