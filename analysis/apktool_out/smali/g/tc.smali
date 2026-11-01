.class public final Lg/tc;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field final synthetic this$0:Lg/exq;


# direct methods
.method public constructor <init>(Lg/exq;)V
    .locals 0

    iput-object p1, p0, Lg/tc;->this$0:Lg/exq;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lg/tc;->this$0:Lg/exq;

    iget-object v1, v0, Lg/exq;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lg/exq;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lg/tc;->this$0:Lg/exq;

    iget-object v1, v1, Lg/exq;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "context.noBackupFilesDir"

    invoke-static {v1, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lg/tc;->this$0:Lg/exq;

    iget-object v2, v2, Lg/exq;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Lg/got;

    iget-object v1, p0, Lg/tc;->this$0:Lg/exq;

    iget-object v4, v1, Lg/exq;->e:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lg/fc;

    const/16 v0, 0x9

    invoke-direct {v6, v0}, Lg/fc;-><init>(I)V

    iget-object v0, p0, Lg/tc;->this$0:Lg/exq;

    iget-object v7, v0, Lg/exq;->b:Lg/dsg;

    iget-boolean v8, v0, Lg/exq;->d:Z

    invoke-direct/range {v3 .. v8}, Lg/got;-><init>(Landroid/content/Context;Ljava/lang/String;Lg/fc;Lg/dsg;Z)V

    goto :goto_0

    :cond_0
    new-instance v4, Lg/got;

    iget-object v0, p0, Lg/tc;->this$0:Lg/exq;

    iget-object v5, v0, Lg/exq;->e:Landroid/content/Context;

    iget-object v6, v0, Lg/exq;->f:Ljava/lang/String;

    new-instance v7, Lg/fc;

    const/16 v1, 0x9

    invoke-direct {v7, v1}, Lg/fc;-><init>(I)V

    iget-object v8, v0, Lg/exq;->b:Lg/dsg;

    iget-boolean v9, v0, Lg/exq;->d:Z

    invoke-direct/range {v4 .. v9}, Lg/got;-><init>(Landroid/content/Context;Ljava/lang/String;Lg/fc;Lg/dsg;Z)V

    move-object v3, v4

    :goto_0
    iget-object v0, p0, Lg/tc;->this$0:Lg/exq;

    iget-boolean v0, v0, Lg/exq;->a:Z

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-object v3
.end method
