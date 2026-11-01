.class public final Lg/cln;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# instance fields
.field public final b:Ljava/util/TreeSet;

.field public final c:Ljava/util/TreeMap;

.field public final d:Lg/cqc;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/HashSet;

.field public final g:Ljava/util/TreeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/cln;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/cln;->a:Lg/dba;

    return-void
.end method

.method public constructor <init>(Lg/cqc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lg/cln;->g:Ljava/util/TreeSet;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lg/cln;->b:Ljava/util/TreeSet;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lg/cln;->c:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/cln;->e:Ljava/util/ArrayList;

    iput-object p1, p0, Lg/cln;->d:Lg/cqc;

    iget-object p1, p1, Lg/cqc;->k:Lg/ur;

    iget-object p1, p1, Lg/ur;->f:Ljava/util/HashSet;

    iput-object p1, p0, Lg/cln;->f:Ljava/util/HashSet;

    return-void
.end method
