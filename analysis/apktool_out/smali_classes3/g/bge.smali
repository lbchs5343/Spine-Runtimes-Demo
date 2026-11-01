.class public final Lg/bge;
.super Lg/fyg;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final synthetic d:Lg/ug;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lg/ug;ILjava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lg/bge;->b:I

    iput-object p2, p0, Lg/bge;->d:Lg/ug;

    iput p3, p0, Lg/bge;->e:I

    iput-object p4, p0, Lg/bge;->a:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/fyg;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lg/ug;ILjava/util/List;Z)V
    .locals 0

    const/4 p5, 0x0

    iput p5, p0, Lg/bge;->b:I

    iput-object p2, p0, Lg/bge;->d:Lg/ug;

    iput p3, p0, Lg/bge;->e:I

    iput-object p4, p0, Lg/bge;->a:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/fyg;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private final j()J
    .locals 3

    iget-object v0, p0, Lg/bge;->d:Lg/ug;

    iget-object v0, v0, Lg/ug;->l:Lg/bmr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lg/bge;->d:Lg/ug;

    iget-object v0, v0, Lg/ug;->w:Lg/djf;

    iget v1, p0, Lg/bge;->e:I

    sget-object v2, Lg/amc;->CANCEL:Lg/amc;

    invoke-virtual {v0, v1, v2}, Lg/djf;->g(ILg/amc;)V

    iget-object v0, p0, Lg/bge;->d:Lg/ug;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lg/bge;->d:Lg/ug;

    iget-object v1, v1, Lg/ug;->f:Ljava/util/LinkedHashSet;

    iget v2, p0, Lg/bge;->e:I

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


# virtual methods
.method public final c()J
    .locals 4

    iget v0, p0, Lg/bge;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bge;->d:Lg/ug;

    :try_start_0
    iget v1, p0, Lg/bge;->e:I

    iget-object v2, p0, Lg/bge;->a:Ljava/lang/Object;

    check-cast v2, Lg/amc;

    const-string v3, "statusCode"

    invoke-static {v2, v3}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lg/ug;->w:Lg/djf;

    invoke-virtual {v3, v1, v2}, Lg/djf;->g(ILg/amc;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Lg/ug;->ah(Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_0
    invoke-direct {p0}, Lg/bge;->j()J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    iget-object v0, p0, Lg/bge;->d:Lg/ug;

    iget-object v0, v0, Lg/ug;->l:Lg/bmr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v0, p0, Lg/bge;->d:Lg/ug;

    iget-object v0, v0, Lg/ug;->w:Lg/djf;

    iget v1, p0, Lg/bge;->e:I

    sget-object v2, Lg/amc;->CANCEL:Lg/amc;

    invoke-virtual {v0, v1, v2}, Lg/djf;->g(ILg/amc;)V

    iget-object v0, p0, Lg/bge;->d:Lg/ug;

    monitor-enter v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v1, p0, Lg/bge;->d:Lg/ug;

    iget-object v1, v1, Lg/ug;->f:Ljava/util/LinkedHashSet;

    iget v2, p0, Lg/bge;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :goto_1
    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
