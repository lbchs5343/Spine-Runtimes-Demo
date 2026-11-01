.class public final Lg/clv;
.super Lg/cys;
.source "SourceFile"


# static fields
.field private static final zza:Lg/clv;


# instance fields
.field private zze:I

.field private zzf:J

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:Lg/cwe;

.field private zzj:Lg/cwe;

.field private zzk:Lg/cwe;

.field private zzl:Ljava/lang/String;

.field private zzm:Z

.field private zzn:Lg/cwe;

.field private zzo:Lg/cwe;

.field private zzp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/clv;

    invoke-direct {v0}, Lg/clv;-><init>()V

    sput-object v0, Lg/clv;->zza:Lg/clv;

    const-class v1, Lg/clv;

    invoke-static {v1, v0}, Lg/cys;->af(Ljava/lang/Class;Lg/cys;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lg/cys;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lg/clv;->zzg:Ljava/lang/String;

    sget-object v1, Lg/hbs;->a:Lg/hbs;

    iput-object v1, p0, Lg/clv;->zzi:Lg/cwe;

    iput-object v1, p0, Lg/clv;->zzj:Lg/cwe;

    iput-object v1, p0, Lg/clv;->zzk:Lg/cwe;

    iput-object v0, p0, Lg/clv;->zzl:Ljava/lang/String;

    iput-object v1, p0, Lg/clv;->zzn:Lg/cwe;

    iput-object v1, p0, Lg/clv;->zzo:Lg/cwe;

    iput-object v0, p0, Lg/clv;->zzp:Ljava/lang/String;

    return-void
.end method

.method public static b(Lg/clv;)V
    .locals 1

    sget-object v0, Lg/hbs;->a:Lg/hbs;

    iput-object v0, p0, Lg/clv;->zzk:Lg/cwe;

    return-void
.end method

.method public static c()Lg/gou;
    .locals 1

    sget-object v0, Lg/clv;->zza:Lg/clv;

    invoke-virtual {v0}, Lg/cys;->ag()Lg/crf;

    move-result-object v0

    check-cast v0, Lg/gou;

    return-object v0
.end method

.method public static d()Lg/clv;
    .locals 1

    sget-object v0, Lg/clv;->zza:Lg/clv;

    return-object v0
.end method

.method public static e(Lg/clv;ILg/bzt;)V
    .locals 2

    iget-object v0, p0, Lg/clv;->zzj:Lg/cwe;

    move-object v1, v0

    check-cast v1, Lg/gzj;

    iget-boolean v1, v1, Lg/gzj;->f:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lg/cys;->ac(Lg/cwe;)Lg/cwe;

    move-result-object v0

    iput-object v0, p0, Lg/clv;->zzj:Lg/cwe;

    :cond_0
    iget-object p0, p0, Lg/clv;->zzj:Lg/cwe;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
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
    sget-object p1, Lg/clv;->zza:Lg/clv;

    return-object p1

    :cond_1
    new-instance p1, Lg/gou;

    sget-object v0, Lg/clv;->zza:Lg/clv;

    invoke-direct {p1, v0}, Lg/crf;-><init>(Lg/cys;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/clv;

    invoke-direct {p1}, Lg/clv;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x11

    new-array p1, p1, [Ljava/lang/Object;

    const-string v5, "zze"

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const-string v5, "zzf"

    aput-object v5, p1, v0

    const-string v0, "zzg"

    aput-object v0, p1, v4

    const-string v0, "zzh"

    aput-object v0, p1, v3

    const-string v0, "zzi"

    aput-object v0, p1, v2

    const-class v0, Lg/chj;

    aput-object v0, p1, v1

    const-string v0, "zzj"

    const/4 v1, 0x6

    aput-object v0, p1, v1

    const-class v0, Lg/bzt;

    const/4 v1, 0x7

    aput-object v0, p1, v1

    const-string v0, "zzk"

    const/16 v1, 0x8

    aput-object v0, p1, v1

    const-class v0, Lg/ham;

    const/16 v1, 0x9

    aput-object v0, p1, v1

    const-string v0, "zzl"

    const/16 v1, 0xa

    aput-object v0, p1, v1

    const-string v0, "zzm"

    const/16 v1, 0xb

    aput-object v0, p1, v1

    const-string v0, "zzn"

    const/16 v1, 0xc

    aput-object v0, p1, v1

    const-class v0, Lg/kh;

    const/16 v1, 0xd

    aput-object v0, p1, v1

    const-string v0, "zzo"

    const/16 v1, 0xe

    aput-object v0, p1, v1

    const-class v0, Lg/hbo;

    const/16 v1, 0xf

    aput-object v0, p1, v1

    const-string v0, "zzp"

    const/16 v1, 0x10

    aput-object v0, p1, v1

    sget-object v0, Lg/clv;->zza:Lg/clv;

    new-instance v1, Lg/eqc;

    const-string v2, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0005\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1004\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\u1008\u0003\u0008\u1007\u0004\t\u001b\n\u001b\u000b\u1008\u0005"

    invoke-direct {v1, v0, v2, p1}, Lg/eqc;-><init>(Lg/cir;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lg/clv;->zzm:Z

    return v0
.end method

.method public final g(I)Lg/bzt;
    .locals 1

    iget-object v0, p0, Lg/clv;->zzj:Lg/cwe;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/bzt;

    return-object p1
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lg/clv;->zzf:J

    return-wide v0
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Lg/clv;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()I
    .locals 1

    iget-object v0, p0, Lg/clv;->zzn:Lg/cwe;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/clv;->zzo:Lg/cwe;

    return-object v0
.end method

.method public final l()Lg/cwe;
    .locals 1

    iget-object v0, p0, Lg/clv;->zzn:Lg/cwe;

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/clv;->zzi:Lg/cwe;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/clv;->zzp:Ljava/lang/String;

    return-object v0
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, Lg/clv;->zzj:Lg/cwe;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 1

    iget v0, p0, Lg/clv;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()Lg/cwe;
    .locals 1

    iget-object v0, p0, Lg/clv;->zzk:Lg/cwe;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/clv;->zzg:Ljava/lang/String;

    return-object v0
.end method
