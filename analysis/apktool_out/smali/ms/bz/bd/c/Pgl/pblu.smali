.class public Lms/bz/bd/c/Pgl/pblu;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:Lms/bz/bd/c/Pgl/pblt$pblb;

.field public final c:Lms/bz/bd/c/Pgl/pblr;


# direct methods
.method public constructor <init>(Lms/bz/bd/c/Pgl/pblt$pblb;Lms/bz/bd/c/Pgl/pblr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lms/bz/bd/c/Pgl/pblu;->a:Ljava/util/HashSet;

    iput-object p1, p0, Lms/bz/bd/c/Pgl/pblu;->b:Lms/bz/bd/c/Pgl/pblt$pblb;

    iput-object p2, p0, Lms/bz/bd/c/Pgl/pblu;->c:Lms/bz/bd/c/Pgl/pblr;

    return-void
.end method


# virtual methods
.method public final d(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    iget-object v0, p0, Lms/bz/bd/c/Pgl/pblu;->b:Lms/bz/bd/c/Pgl/pblt$pblb;

    check-cast v0, Lms/bz/bd/c/Pgl/pblw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Pglbizssdk_ml"

    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "lib"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->dq(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
