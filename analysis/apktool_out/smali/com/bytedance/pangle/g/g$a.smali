.class final Lcom/bytedance/pangle/g/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/pangle/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:[B


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/pangle/g/g$a;->a:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/bytedance/pangle/g/g$a;->b:[B

    return-void
.end method
