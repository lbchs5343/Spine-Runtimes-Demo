.class public final Lg/grz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/eum;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lg/eum;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/grz;->a:Lg/eum;

    iput p2, p0, Lg/grz;->b:I

    iput-boolean p3, p0, Lg/grz;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lg/grz;->a:Lg/eum;

    invoke-virtual {v0}, Lg/eum;->y()V

    :try_start_0
    iget v1, p0, Lg/grz;->b:I

    iput v1, v0, Lg/eum;->p:I

    iget-object v1, v0, Lg/eum;->i:Lg/fc;

    new-instance v2, Lg/cxf;

    iget-object v1, v1, Lg/fc;->e:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lg/cxf;-><init>(Ljava/nio/ByteBuffer;I)V

    new-instance v1, Lg/dbj;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lg/bgf;-><init>(IZ)V

    iput-object v2, v1, Lg/bgf;->z:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lg/eum;->ab(Lg/dbj;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/eum;->aa(Landroid/graphics/Rect;)V

    iget-boolean v1, p0, Lg/grz;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/eum;->ac()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
