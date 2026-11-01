.class public final Lg/fpr;
.super Lg/fox;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:Ljava/util/List;

.field public f:Ljava/util/SortedSet;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/SortedSet;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fpr;->b:Ljava/util/List;

    iput-object p2, p0, Lg/fpr;->f:Ljava/util/SortedSet;

    iput-object p3, p0, Lg/fpr;->a:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d()Lg/fky;
    .locals 1

    sget-object v0, Lg/acq;->h:Lg/acq;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "METHOD_OVERRIDE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/fpr;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
