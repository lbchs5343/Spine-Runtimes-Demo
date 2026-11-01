.class public Lcom/bykv/vk/openvk/preload/geckox/ig/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/geckox/ig/s$dq;,
        Lcom/bykv/vk/openvk/preload/geckox/ig/s$d;
    }
.end annotation


# instance fields
.field private d:J
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "package_version"
    .end annotation
.end field

.field private dq:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "group_name"
    .end annotation
.end field

.field private iw:Ljava/lang/String;

.field private mn:I
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "package_type"
    .end annotation
.end field

.field private ox:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "channel"
    .end annotation
.end field

.field private p:Lcom/bykv/vk/openvk/preload/geckox/ig/s$dq;
    .annotation runtime Lcom/bykv/vk/openvk/preload/dq/dq/ox;
        dq = "content"
    .end annotation
.end field

.field private s:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->iw:Ljava/lang/String;

    return-object v0
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->s:J

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->iw:Ljava/lang/String;

    return-void
.end method

.method public ia()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->mn:I

    return v0
.end method

.method public iw()Lcom/bykv/vk/openvk/preload/geckox/ig/s$d;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->p:Lcom/bykv/vk/openvk/preload/geckox/ig/s$dq;

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/geckox/ig/s$dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/ig/s$dq;)Lcom/bykv/vk/openvk/preload/geckox/ig/s$d;

    move-result-object v0

    return-object v0
.end method

.method public mn()Lcom/bykv/vk/openvk/preload/geckox/ig/s$d;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->p:Lcom/bykv/vk/openvk/preload/geckox/ig/s$dq;

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/geckox/ig/s$dq;->d(Lcom/bykv/vk/openvk/preload/geckox/ig/s$dq;)Lcom/bykv/vk/openvk/preload/geckox/ig/s$d;

    move-result-object v0

    return-object v0
.end method

.method public ox()J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->s:J

    return-wide v0
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->d:J

    return-wide v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdatePackage{version="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", channel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->ox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->p:Lcom/bykv/vk/openvk/preload/geckox/ig/s$dq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bykv/vk/openvk/preload/geckox/ig/s;->mn:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lg/awf;->s(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
