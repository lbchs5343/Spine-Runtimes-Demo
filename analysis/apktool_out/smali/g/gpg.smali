.class public Lg/gpg;
.super Lg/fox;
.source "SourceFile"


# instance fields
.field public final a:Lg/ghr;


# direct methods
.method public constructor <init>(Lg/ghr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gpg;->a:Lg/ghr;

    return-void
.end method


# virtual methods
.method public final d()Lg/fky;
    .locals 1

    sget-object v0, Lg/ao;->m:Lg/ao;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ANNOTATION_DEFAULT: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/gpg;->a:Lg/ghr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
