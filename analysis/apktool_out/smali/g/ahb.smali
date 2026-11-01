.class public final Lg/ahb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lg/cqf;

.field public final c:I

.field public final d:Lg/enn;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Lg/dle;


# direct methods
.method public constructor <init>(ILjava/lang/String;IILg/cqf;Lg/enn;Lg/dle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/ahb;->c:I

    iput-object p2, p0, Lg/ahb;->e:Ljava/lang/String;

    iput p3, p0, Lg/ahb;->f:I

    iput p4, p0, Lg/ahb;->a:I

    iput-object p5, p0, Lg/ahb;->b:Lg/cqf;

    iput-object p6, p0, Lg/ahb;->d:Lg/enn;

    iput-object p7, p0, Lg/ahb;->g:Lg/dle;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lg/ahb;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ahb;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
