.class public final Lg/dxq;
.super Lg/fyg;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/ug;

.field public final synthetic d:I

.field public final synthetic e:Lg/clq;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/ug;ILg/clq;IZ)V
    .locals 0

    iput-object p2, p0, Lg/dxq;->b:Lg/ug;

    iput p3, p0, Lg/dxq;->d:I

    iput-object p4, p0, Lg/dxq;->e:Lg/clq;

    iput p5, p0, Lg/dxq;->a:I

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/fyg;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 4

    :try_start_0
    iget-object v0, p0, Lg/dxq;->b:Lg/ug;

    iget-object v0, v0, Lg/ug;->l:Lg/bmr;

    iget-object v1, p0, Lg/dxq;->e:Lg/clq;

    iget v2, p0, Lg/dxq;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lg/clq;->skip(J)V

    iget-object v0, p0, Lg/dxq;->b:Lg/ug;

    iget-object v0, v0, Lg/ug;->w:Lg/djf;

    iget v1, p0, Lg/dxq;->d:I

    sget-object v2, Lg/amc;->CANCEL:Lg/amc;

    invoke-virtual {v0, v1, v2}, Lg/djf;->g(ILg/amc;)V

    iget-object v0, p0, Lg/dxq;->b:Lg/ug;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lg/dxq;->b:Lg/ug;

    iget-object v1, v1, Lg/ug;->f:Ljava/util/LinkedHashSet;

    iget v2, p0, Lg/dxq;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
