.class public Lcom/ss/android/download/api/model/ox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/download/api/model/ox$dq;
    }
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field private dq:Ljava/lang/String;

.field private final f:Lorg/json/JSONObject;

.field private final ia:Lorg/json/JSONObject;

.field private final ig:Ljava/lang/Object;

.field private final iw:Ljava/lang/String;

.field private final jy:Ljava/lang/String;

.field private final kk:Lorg/json/JSONObject;

.field private final mn:J

.field private final mp:Ljava/lang/String;

.field private final no:I

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ox:Ljava/lang/String;

.field private final p:Z

.field private final q:Z

.field private final s:J


# direct methods
.method public constructor <init>(Lcom/ss/android/download/api/model/ox$dq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/ss/android/download/api/model/ox$dq;->dq(Lcom/ss/android/download/api/model/ox$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/ox;->dq:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/ox$dq;->d(Lcom/ss/android/download/api/model/ox$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/ox;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/ox$dq;->ox(Lcom/ss/android/download/api/model/ox$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/ox;->ox:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/ox$dq;->p(Lcom/ss/android/download/api/model/ox$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/download/api/model/ox;->p:Z

    invoke-static {p1}, Lcom/ss/android/download/api/model/ox$dq;->s(Lcom/ss/android/download/api/model/ox$dq;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/download/api/model/ox;->s:J

    invoke-static {p1}, Lcom/ss/android/download/api/model/ox$dq;->iw(Lcom/ss/android/download/api/model/ox$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/ox;->iw:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/ox$dq;->mn(Lcom/ss/android/download/api/model/ox$dq;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/download/api/model/ox;->mn:J

    invoke-static {p1}, Lcom/ss/android/download/api/model/ox$dq;->ia(Lcom/ss/android/download/api/model/ox$dq;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/ox;->ia:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/ss/android/download/api/model/ox$dq;->kk(Lcom/ss/android/download/api/model/ox$dq;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/ox;->kk:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/ss/android/download/api/model/ox$dq;->o(Lcom/ss/android/download/api/model/ox$dq;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/ox;->o:Ljava/util/List;

    invoke-static {p1}, Lcom/ss/android/download/api/model/ox$dq;->no(Lcom/ss/android/download/api/model/ox$dq;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/download/api/model/ox;->no:I

    invoke-static {p1}, Lcom/ss/android/download/api/model/ox$dq;->ig(Lcom/ss/android/download/api/model/ox$dq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/ox;->ig:Ljava/lang/Object;

    invoke-static {p1}, Lcom/ss/android/download/api/model/ox$dq;->mp(Lcom/ss/android/download/api/model/ox$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/download/api/model/ox;->q:Z

    invoke-static {p1}, Lcom/ss/android/download/api/model/ox$dq;->q(Lcom/ss/android/download/api/model/ox$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/ox;->jy:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/model/ox$dq;->jy(Lcom/ss/android/download/api/model/ox$dq;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/model/ox;->f:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/ss/android/download/api/model/ox$dq;->f(Lcom/ss/android/download/api/model/ox$dq;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/download/api/model/ox;->mp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/model/ox;->d:Ljava/lang/String;

    return-object v0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/model/ox;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public ia()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/model/ox;->ia:Lorg/json/JSONObject;

    return-object v0
.end method

.method public ig()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/model/ox;->ig:Ljava/lang/Object;

    return-object v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/model/ox;->iw:Ljava/lang/String;

    return-object v0
.end method

.method public jy()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/model/ox;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method public kk()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/model/ox;->kk:Lorg/json/JSONObject;

    return-object v0
.end method

.method public mn()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/download/api/model/ox;->mn:J

    return-wide v0
.end method

.method public mp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/download/api/model/ox;->q:Z

    return v0
.end method

.method public no()I
    .locals 1

    iget v0, p0, Lcom/ss/android/download/api/model/ox;->no:I

    return v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/download/api/model/ox;->o:Ljava/util/List;

    return-object v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/model/ox;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/download/api/model/ox;->p:Z

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/model/ox;->jy:Ljava/lang/String;

    return-object v0
.end method

.method public s()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/download/api/model/ox;->s:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "category: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ss/android/download/api/model/ox;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ttag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/ox;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tlabel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/ox;->ox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nisAd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/download/api/model/ox;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\tadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ss/android/download/api/model/ox;->s:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\tlogExtra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/ox;->iw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\textValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ss/android/download/api/model/ox;->mn:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nextJson: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/ox;->ia:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nparamsJson: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/ox;->kk:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nclickTrackUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/ox;->o:Ljava/util/List;

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\teventSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/download/api/model/ox;->no:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\textraObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/ox;->ig:Ljava/lang/Object;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nisV3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/download/api/model/ox;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\tV3EventName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/ox;->jy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tV3EventParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/download/api/model/ox;->f:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
