.class public final Lg/tu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ggq;


# static fields
.field public static final a:Lg/afj;

.field public static final b:Lg/ehz;

.field public static final c:Lg/ait;

.field public static final d:Lg/ait;


# instance fields
.field public e:Z

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/HashMap;

.field public final h:Lg/ehz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/ehz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/ehz;-><init>(I)V

    sput-object v0, Lg/tu;->b:Lg/ehz;

    new-instance v0, Lg/ait;

    invoke-direct {v0, v1}, Lg/ait;-><init>(I)V

    sput-object v0, Lg/tu;->c:Lg/ait;

    new-instance v0, Lg/ait;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/ait;-><init>(I)V

    sput-object v0, Lg/tu;->d:Lg/ait;

    new-instance v0, Lg/afj;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/tu;->a:Lg/afj;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/tu;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lg/tu;->g:Ljava/util/HashMap;

    sget-object v2, Lg/tu;->b:Lg/ehz;

    iput-object v2, p0, Lg/tu;->h:Lg/ehz;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lg/tu;->e:Z

    sget-object v2, Lg/tu;->c:Lg/ait;

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lg/tu;->d:Lg/ait;

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lg/tu;->a:Lg/afj;

    const-class v3, Ljava/util/Date;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Class;Lg/xx;)Lg/ggq;
    .locals 1

    iget-object v0, p0, Lg/tu;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lg/tu;->g:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
