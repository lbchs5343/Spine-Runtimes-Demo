.class public Lg/dpc;
.super Ljava/lang/Object;


# instance fields
.field public final c:Ljava/util/HashMap;

.field public final d:Lg/gkb;

.field public final e:Z


# direct methods
.method public constructor <init>(Lg/gkb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/dpc;->c:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/dpc;->e:Z

    iput-object p1, p0, Lg/dpc;->d:Lg/gkb;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
