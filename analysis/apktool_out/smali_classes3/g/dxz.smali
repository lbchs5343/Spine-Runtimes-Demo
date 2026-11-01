.class public final Lg/dxz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/xx;


# static fields
.field public static final a:Lg/cec;

.field public static final c:Lg/cec;

.field public static final d:Lg/dxz;

.field public static final e:Lg/cec;

.field public static final f:Lg/cec;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg/dxz;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/dxz;->d:Lg/dxz;

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

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "window"

    invoke-direct {v0, v3, v1}, Lg/cec;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lg/dxz;->e:Lg/cec;

    invoke-static {}, Lg/gqc;->ad()Lg/gqc;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lg/gqc;->ab:I

    invoke-virtual {v0}, Lg/gqc;->bg()Lg/bnd;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lg/cec;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "logSourceMetrics"

    invoke-direct {v0, v3, v1}, Lg/cec;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lg/dxz;->f:Lg/cec;

    invoke-static {}, Lg/gqc;->ad()Lg/gqc;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lg/gqc;->ab:I

    invoke-virtual {v0}, Lg/gqc;->bg()Lg/bnd;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lg/cec;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "globalMetrics"

    invoke-direct {v0, v3, v1}, Lg/cec;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lg/dxz;->a:Lg/cec;

    invoke-static {}, Lg/gqc;->ad()Lg/gqc;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Lg/gqc;->ab:I

    invoke-virtual {v0}, Lg/gqc;->bg()Lg/bnd;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lg/cec;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "appNamespace"

    invoke-direct {v0, v2, v1}, Lg/cec;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lg/dxz;->c:Lg/cec;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lg/dwq;

    check-cast p2, Lg/dmp;

    sget-object v0, Lg/dxz;->e:Lg/cec;

    iget-object v1, p1, Lg/dwq;->c:Lg/byy;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/dxz;->f:Lg/cec;

    iget-object v1, p1, Lg/dwq;->d:Ljava/util/List;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/dxz;->a:Lg/cec;

    iget-object v1, p1, Lg/dwq;->e:Lg/fnn;

    invoke-interface {p2, v0, v1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    sget-object v0, Lg/dxz;->c:Lg/cec;

    iget-object p1, p1, Lg/dwq;->b:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lg/dmp;->i(Lg/cec;Ljava/lang/Object;)Lg/dmp;

    return-void
.end method
