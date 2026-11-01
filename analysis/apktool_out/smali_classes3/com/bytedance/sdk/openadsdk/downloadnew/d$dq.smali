.class public Lcom/bytedance/sdk/openadsdk/downloadnew/d$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public dq:Ljava/io/InputStream;

.field public ox:I

.field public p:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/Map;ILjava/net/HttpURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$dq;->dq:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$dq;->d:Ljava/util/Map;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$dq;->ox:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$dq;->p:Ljava/net/HttpURLConnection;

    return-void
.end method
