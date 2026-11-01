.class public final Lg/aon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/xx;


# static fields
.field public static final a:Lg/aon;

.field public static final c:Lg/cec;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/aon;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/aon;->a:Lg/aon;

    invoke-static {}, Lg/gqc;->ad()Lg/gqc;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lg/gqc;->ab:I

    invoke-virtual {v0}, Lg/gqc;->bg()Lg/bnd;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-class v2, Lg/bkv;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lg/cec;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "storageMetrics"

    invoke-direct {v0, v2, v1}, Lg/cec;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lg/aon;->c:Lg/cec;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lg/fnn;

    check-cast p2, Lg/dmp;

    sget-object v0, Lg/aon;->c:Lg/cec;

    iget-object p1, p1, Lg/fnn;->a:Lg/edr;

    invoke-interface {p2, v0, p1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    return-void
.end method
