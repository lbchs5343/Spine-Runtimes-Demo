.class public final Lg/fbl;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/and;


# instance fields
.field final synthetic this$0:Lg/fxy;

.field final synthetic this$1:Lg/abv;


# direct methods
.method public constructor <init>(Lg/fxy;Lg/abv;)V
    .locals 0

    iput-object p1, p0, Lg/fbl;->this$0:Lg/fxy;

    iput-object p2, p0, Lg/fbl;->this$1:Lg/abv;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/io/IOException;

    const-string v0, "it"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lg/fbl;->this$0:Lg/fxy;

    iget-object v0, p0, Lg/fbl;->this$1:Lg/abv;

    monitor-enter p1

    :try_start_0
    invoke-virtual {v0}, Lg/abv;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method
