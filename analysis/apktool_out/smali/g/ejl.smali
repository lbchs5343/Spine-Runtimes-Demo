.class public final Lg/ejl;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public final b:Lg/cmg;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/ejl;->a:Z

    new-instance v1, Lg/cmg;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lg/cmg;->d:[I

    iput-object v2, v1, Lg/cmg;->i:[I

    sget-object v2, Lg/cmg;->f:[Ljava/lang/Object;

    iput-object v2, v1, Lg/cmg;->j:[Ljava/lang/Object;

    iput v0, v1, Lg/cmg;->g:I

    iput-object v1, p0, Lg/ejl;->b:Lg/cmg;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/ejl;->c:Ljava/util/HashMap;

    return-void
.end method
