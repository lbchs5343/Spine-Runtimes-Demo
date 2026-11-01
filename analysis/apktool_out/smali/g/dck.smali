.class public final synthetic Lg/dck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lg/emr;

.field public final synthetic b:Lg/cwx;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lg/emr;Lg/cwx;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dck;->a:Lg/emr;

    iput-object p2, p0, Lg/dck;->b:Lg/cwx;

    iput-object p3, p0, Lg/dck;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg/dck;->b:Lg/cwx;

    iget-object v1, p0, Lg/dck;->c:Ljava/util/Map;

    iget-object v2, p0, Lg/dck;->a:Lg/emr;

    invoke-virtual {v2, v0, v1}, Lg/emr;->ac(Lg/cwx;Ljava/util/Map;)Lg/cwx;

    move-result-object v0

    return-object v0
.end method
