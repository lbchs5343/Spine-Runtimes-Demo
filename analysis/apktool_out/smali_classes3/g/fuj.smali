.class public final Lg/fuj;
.super Lg/cys;
.source "SourceFile"


# static fields
.field private static final zza:Lg/fuj;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Z

.field private zzi:Lg/cwe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/fuj;

    invoke-direct {v0}, Lg/fuj;-><init>()V

    sput-object v0, Lg/fuj;->zza:Lg/fuj;

    const-class v1, Lg/fuj;

    invoke-static {v1, v0}, Lg/cys;->af(Ljava/lang/Class;Lg/cys;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/cys;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lg/fuj;->zzg:Ljava/lang/String;

    sget-object v0, Lg/hbs;->a:Lg/hbs;

    iput-object v0, p0, Lg/fuj;->zzi:Lg/cwe;

    return-void
.end method

.method public static b()Lg/fuj;
    .locals 1

    sget-object v0, Lg/fuj;->zza:Lg/fuj;

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 7

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lg/fuj;->zza:Lg/fuj;

    return-object p1

    :cond_1
    new-instance p1, Lg/gp;

    sget-object v0, Lg/fuj;->zza:Lg/fuj;

    invoke-direct {p1, v0}, Lg/crf;-><init>(Lg/cys;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/fuj;

    invoke-direct {p1}, Lg/fuj;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const-string v5, "zze"

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const-string v5, "zzf"

    aput-object v5, p1, v0

    sget-object v0, Lg/gxe;->e:Lg/gxe;

    aput-object v0, p1, v4

    const-string v0, "zzg"

    aput-object v0, p1, v3

    const-string v0, "zzh"

    aput-object v0, p1, v2

    const-string v0, "zzi"

    aput-object v0, p1, v1

    sget-object v0, Lg/fuj;->zza:Lg/fuj;

    new-instance v1, Lg/eqc;

    const-string v2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1007\u0002\u0004\u001a"

    invoke-direct {v1, v0, v2, p1}, Lg/eqc;-><init>(Lg/cir;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lg/cwe;
    .locals 1

    iget-object v0, p0, Lg/fuj;->zzi:Lg/cwe;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/fuj;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lg/fuj;->zzi:Lg/cwe;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lg/fuj;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lg/fuj;->zzh:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget v0, p0, Lg/fuj;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()I
    .locals 2

    iget v0, p0, Lg/fuj;->zzf:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    return v1

    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j()Z
    .locals 1

    iget v0, p0, Lg/fuj;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
