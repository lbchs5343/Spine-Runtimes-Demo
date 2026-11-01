.class public final Lg/xp;
.super Ljava/nio/file/SimpleFileVisitor;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lg/xp;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lg/xp;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0

    invoke-static {p1}, Lg/cnf;->i(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object p1

    iget-object p2, p0, Lg/xp;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lg/cnf;->c()Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public final visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    invoke-static {p1}, Lg/cnf;->i(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object p1

    iget-object p2, p0, Lg/xp;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lg/cnf;->c()Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
