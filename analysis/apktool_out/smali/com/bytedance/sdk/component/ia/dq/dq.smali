.class public Lcom/bytedance/sdk/component/ia/dq/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ia/dq/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ia/dq/dq$dq;
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/component/ia/dq/no;

.field private dq:Lcom/bytedance/sdk/component/ia/dq/iw;

.field private ia:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

.field private ig:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private iw:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

.field private kk:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

.field private mn:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

.field private mp:I

.field private no:Lcom/bytedance/sdk/component/ia/dq/p;

.field private o:Z

.field private ox:Ljava/lang/String;

.field private p:Landroid/content/Context;

.field private q:I

.field private s:Lcom/bytedance/sdk/component/ia/d/p/d/dq;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->ig:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->mp:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->q:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/component/ia/dq/dq$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/dq/dq;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/ia/dq/dq;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->mp:I

    return p1
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/ia/dq/dq;Lcom/bytedance/sdk/component/ia/d/p/d/dq;)Lcom/bytedance/sdk/component/ia/d/p/d/dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->iw:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/dq/dq;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->q:I

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/dq/dq;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->p:Landroid/content/Context;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/dq/dq;Lcom/bytedance/sdk/component/ia/d/p/d/dq;)Lcom/bytedance/sdk/component/ia/d/p/d/dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->s:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/dq/dq;Lcom/bytedance/sdk/component/ia/dq/iw;)Lcom/bytedance/sdk/component/ia/dq/iw;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->dq:Lcom/bytedance/sdk/component/ia/dq/iw;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/dq/dq;Lcom/bytedance/sdk/component/ia/dq/no;)Lcom/bytedance/sdk/component/ia/dq/no;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->d:Lcom/bytedance/sdk/component/ia/dq/no;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/dq/dq;Lcom/bytedance/sdk/component/ia/dq/p;)Lcom/bytedance/sdk/component/ia/dq/p;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->no:Lcom/bytedance/sdk/component/ia/dq/p;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/dq/dq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->ox:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/dq/dq;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->ig:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/dq/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->o:Z

    return p1
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/component/ia/dq/dq;Lcom/bytedance/sdk/component/ia/d/p/d/dq;)Lcom/bytedance/sdk/component/ia/d/p/d/dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->mn:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    return-object p1
.end method

.method public static synthetic p(Lcom/bytedance/sdk/component/ia/dq/dq;Lcom/bytedance/sdk/component/ia/d/p/d/dq;)Lcom/bytedance/sdk/component/ia/d/p/d/dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->ia:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    return-object p1
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/component/ia/dq/iw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->dq:Lcom/bytedance/sdk/component/ia/dq/iw;

    return-object v0
.end method

.method public dq()Lcom/bytedance/sdk/component/ia/d/p/d/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->ia:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/dq/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->dq:Lcom/bytedance/sdk/component/ia/dq/iw;

    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->ig:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->p:Landroid/content/Context;

    return-object v0
.end method

.method public ia()Lcom/bytedance/sdk/component/ia/d/p/d/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->iw:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    return-object v0
.end method

.method public iw()Lcom/bytedance/sdk/component/ia/d/p/d/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->kk:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    return-object v0
.end method

.method public kk()Lcom/bytedance/sdk/component/ia/d/p/d/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->mn:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    return-object v0
.end method

.method public mn()Lcom/bytedance/sdk/component/ia/d/p/d/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->s:Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    return-object v0
.end method

.method public no()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->o:Z

    return v0
.end method

.method public o()Lcom/bytedance/sdk/component/ia/dq/no;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->d:Lcom/bytedance/sdk/component/ia/dq/no;

    return-object v0
.end method

.method public ox()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->ig:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public p()Lcom/bytedance/sdk/component/ia/dq/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->no:Lcom/bytedance/sdk/component/ia/dq/p;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/dq/dq;->ox:Ljava/lang/String;

    return-object v0
.end method
