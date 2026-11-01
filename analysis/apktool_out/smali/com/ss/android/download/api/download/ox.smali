.class public Lcom/ss/android/download/api/download/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/download/api/download/DownloadEventConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/download/api/download/ox$dq;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private d:Z

.field private dq:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private fw:Ljava/lang/String;

.field private ia:Ljava/lang/String;

.field private ig:Ljava/lang/Object;

.field private iw:Ljava/lang/String;

.field private jy:Z

.field private kk:Ljava/lang/String;

.field private mn:Ljava/lang/String;

.field private mp:Z

.field private no:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private ox:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/ss/android/download/api/download/ox$dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/ss/android/download/api/download/ox$dq;->dq(Lcom/ss/android/download/api/download/ox$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/download/ox;->dq:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/download/ox$dq;->d(Lcom/ss/android/download/api/download/ox$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/download/api/download/ox;->d:Z

    invoke-static {p1}, Lcom/ss/android/download/api/download/ox$dq;->ox(Lcom/ss/android/download/api/download/ox$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/download/ox;->ox:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/download/ox$dq;->p(Lcom/ss/android/download/api/download/ox$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/download/ox;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/download/ox$dq;->s(Lcom/ss/android/download/api/download/ox$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/download/ox;->s:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/download/ox$dq;->iw(Lcom/ss/android/download/api/download/ox$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/download/ox;->iw:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/download/ox$dq;->mn(Lcom/ss/android/download/api/download/ox$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/download/ox;->mn:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/download/ox$dq;->ia(Lcom/ss/android/download/api/download/ox$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/download/ox;->ia:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/download/ox$dq;->kk(Lcom/ss/android/download/api/download/ox$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/download/ox;->kk:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/download/ox$dq;->o(Lcom/ss/android/download/api/download/ox$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/download/ox;->o:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/download/ox$dq;->no(Lcom/ss/android/download/api/download/ox$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/download/ox;->no:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/download/ox$dq;->ig(Lcom/ss/android/download/api/download/ox$dq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/download/ox;->ig:Ljava/lang/Object;

    invoke-static {p1}, Lcom/ss/android/download/api/download/ox$dq;->mp(Lcom/ss/android/download/api/download/ox$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/download/api/download/ox;->mp:Z

    invoke-static {p1}, Lcom/ss/android/download/api/download/ox$dq;->q(Lcom/ss/android/download/api/download/ox$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/download/api/download/ox;->q:Z

    invoke-static {p1}, Lcom/ss/android/download/api/download/ox$dq;->jy(Lcom/ss/android/download/api/download/ox$dq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/download/api/download/ox;->jy:Z

    invoke-static {p1}, Lcom/ss/android/download/api/download/ox$dq;->f(Lcom/ss/android/download/api/download/ox$dq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/download/api/download/ox;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/ss/android/download/api/download/ox$dq;->fw(Lcom/ss/android/download/api/download/ox$dq;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/download/api/download/ox;->fw:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/android/download/api/download/ox$dq;Lcom/ss/android/download/api/download/ox$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/download/api/download/ox;-><init>(Lcom/ss/android/download/api/download/ox$dq;)V

    return-void
.end method


# virtual methods
.method public getClickButtonTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/download/ox;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public getClickContinueLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/download/ox;->iw:Ljava/lang/String;

    return-object v0
.end method

.method public getClickInstallLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/download/ox;->mn:Ljava/lang/String;

    return-object v0
.end method

.method public getClickItemTag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClickLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/download/ox;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public getClickPauseLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/download/ox;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getClickStartLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/download/ox;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadScene()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExtraEventObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/download/ox;->ig:Ljava/lang/Object;

    return-object v0
.end method

.method public getExtraJson()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParamsJson()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRefer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/download/ox;->fw:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageDenyLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/download/api/download/ox;->o:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableClickEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/download/api/download/ox;->d:Z

    return v0
.end method

.method public isEnableV3Event()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/download/api/download/ox;->mp:Z

    return v0
.end method

.method public setDownloadScene(I)V
    .locals 0

    return-void
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
