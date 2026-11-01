.class final Lcom/bytedance/sdk/openadsdk/api/plugin/mn$dq;
.super Lcom/bytedance/pangle/download/PluginDownloadBean;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/mn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation


# instance fields
.field public d:Ljava/io/File;

.field public dq:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/pangle/download/PluginDownloadBean;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/mn$dq;->dq:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/mn$dq;->d:Ljava/io/File;

    iput-object v0, p0, Lcom/bytedance/pangle/download/PluginDownloadBean;->mBackupUrlList:Ljava/util/List;

    return-void
.end method
