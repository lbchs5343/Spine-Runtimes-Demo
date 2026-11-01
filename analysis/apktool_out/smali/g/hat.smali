.class public final Lg/hat;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lg/gaw;

.field public static final b:Lg/cpo;


# instance fields
.field public final c:Landroid/util/SparseArray;

.field public final d:Lcom/bykv/vk/openvk/api/proto/ValueSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lg/hat;->g(I)Lg/hat;

    move-result-object v0

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    sput-object v0, Lg/hat;->b:Lg/cpo;

    new-instance v0, Lg/gaw;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/hat;->a:Lg/gaw;

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/hat;->c:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/hat;->c:Landroid/util/SparseArray;

    iput-object p2, p0, Lg/hat;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void
.end method

.method public static final e(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lg/hat;
    .locals 2

    new-instance v0, Lg/hat;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {v0, v1, p0}, Lg/hat;-><init>(Landroid/util/SparseArray;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return-object v0
.end method

.method public static final f()Lg/hat;
    .locals 2

    new-instance v0, Lg/hat;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {v0, v1}, Lg/hat;-><init>(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public static final g(I)Lg/hat;
    .locals 2

    new-instance v0, Lg/hat;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, p0}, Landroid/util/SparseArray;-><init>(I)V

    invoke-direct {v0, v1}, Lg/hat;-><init>(Landroid/util/SparseArray;)V

    return-object v0
.end method


# virtual methods
.method public final h(IJ)V
    .locals 1

    iget-object v0, p0, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final i(IZ)V
    .locals 1

    iget-object v0, p0, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final j(ID)V
    .locals 1

    iget-object v0, p0, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final k()Lg/cpo;
    .locals 3

    new-instance v0, Lg/cpo;

    iget-object v1, p0, Lg/hat;->c:Landroid/util/SparseArray;

    iget-object v2, p0, Lg/hat;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    invoke-direct {v0, v1, v2}, Lg/cpo;-><init>(Landroid/util/SparseArray;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return-object v0
.end method

.method public final l(IF)V
    .locals 1

    iget-object v0, p0, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final m(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final n(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final o(II)V
    .locals 1

    iget-object v0, p0, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
