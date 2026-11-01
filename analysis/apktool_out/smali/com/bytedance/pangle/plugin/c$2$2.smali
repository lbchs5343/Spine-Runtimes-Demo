.class final Lcom/bytedance/pangle/plugin/c$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/pangle/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/pangle/plugin/c$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Lcom/bytedance/pangle/plugin/c$2;


# direct methods
.method public constructor <init>(Lcom/bytedance/pangle/plugin/c$2;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/pangle/plugin/c$2$2;->b:Lcom/bytedance/pangle/plugin/c$2;

    iput-object p2, p0, Lcom/bytedance/pangle/plugin/c$2$2;->a:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/pangle/plugin/c$2$2;->a:[Z

    iget-object v1, p0, Lcom/bytedance/pangle/plugin/c$2$2;->b:Lcom/bytedance/pangle/plugin/c$2;

    iget-object v2, v1, Lcom/bytedance/pangle/plugin/c$2;->a:Ljava/io/File;

    iget-object v3, v1, Lcom/bytedance/pangle/plugin/c$2;->b:Ljava/lang/String;

    iget v4, v1, Lcom/bytedance/pangle/plugin/c$2;->c:I

    iget-object v1, v1, Lcom/bytedance/pangle/plugin/c$2;->d:Ljava/lang/StringBuffer;

    invoke-static {v2, v3, v4, v1}, Lcom/bytedance/pangle/plugin/c;->e(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    return-void
.end method
