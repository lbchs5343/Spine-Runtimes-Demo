.class public final Lg/dge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/bdf;

.field public final b:Ljava/util/HashSet;

.field public final c:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lg/bdf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/dge;->b:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/dge;->c:Ljava/util/HashSet;

    iput-object p1, p0, Lg/dge;->a:Lg/bdf;

    return-void
.end method
