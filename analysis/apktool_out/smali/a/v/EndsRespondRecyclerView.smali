.class public La/v/EndsRespondRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/v/EndsRespondRecyclerView$OnTopListener;,
        La/v/EndsRespondRecyclerView$OnBottomListener;
    }
.end annotation


# instance fields
.field private isBottomLoading:Z

.field private isMoreBottomData:Z

.field private onBottomListener:La/v/EndsRespondRecyclerView$OnBottomListener;

.field private onTopListener:La/v/EndsRespondRecyclerView$OnTopListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, La/v/EndsRespondRecyclerView;->isBottomLoading:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, La/v/EndsRespondRecyclerView;->isMoreBottomData:Z

    invoke-direct {p0}, La/v/EndsRespondRecyclerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, La/v/EndsRespondRecyclerView;->isBottomLoading:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, La/v/EndsRespondRecyclerView;->isMoreBottomData:Z

    invoke-direct {p0}, La/v/EndsRespondRecyclerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, La/v/EndsRespondRecyclerView;->isBottomLoading:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, La/v/EndsRespondRecyclerView;->isMoreBottomData:Z

    invoke-direct {p0}, La/v/EndsRespondRecyclerView;->init()V

    return-void
.end method

.method public static bridge synthetic a(La/v/EndsRespondRecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, La/v/EndsRespondRecyclerView;->isBottomLoading:Z

    return p0
.end method

.method public static bridge synthetic b(La/v/EndsRespondRecyclerView;)La/v/EndsRespondRecyclerView$OnBottomListener;
    .locals 0

    iget-object p0, p0, La/v/EndsRespondRecyclerView;->onBottomListener:La/v/EndsRespondRecyclerView$OnBottomListener;

    return-object p0
.end method

.method private init()V
    .locals 1

    new-instance v0, La/v/EndsRespondRecyclerView$1;

    invoke-direct {v0, p0}, La/v/EndsRespondRecyclerView$1;-><init>(La/v/EndsRespondRecyclerView;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Lg/doi;)V

    return-void
.end method


# virtual methods
.method public getOnBottomListener()La/v/EndsRespondRecyclerView$OnBottomListener;
    .locals 1

    iget-object v0, p0, La/v/EndsRespondRecyclerView;->onBottomListener:La/v/EndsRespondRecyclerView$OnBottomListener;

    return-object v0
.end method

.method public getOnTopListener()La/v/EndsRespondRecyclerView$OnTopListener;
    .locals 1

    iget-object v0, p0, La/v/EndsRespondRecyclerView;->onTopListener:La/v/EndsRespondRecyclerView$OnTopListener;

    return-object v0
.end method

.method public isMoreBottomData()Z
    .locals 1

    iget-boolean v0, p0, La/v/EndsRespondRecyclerView;->isMoreBottomData:Z

    return v0
.end method

.method public onBottomBegin()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/v/EndsRespondRecyclerView;->isBottomLoading:Z

    return-void
.end method

.method public onBottomEnd()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, La/v/EndsRespondRecyclerView;->isBottomLoading:Z

    return-void
.end method

.method public setMoreBottomData(Z)La/v/EndsRespondRecyclerView;
    .locals 0

    iput-boolean p1, p0, La/v/EndsRespondRecyclerView;->isMoreBottomData:Z

    return-object p0
.end method

.method public setOnBottomListener(La/v/EndsRespondRecyclerView$OnBottomListener;)La/v/EndsRespondRecyclerView;
    .locals 0

    iput-object p1, p0, La/v/EndsRespondRecyclerView;->onBottomListener:La/v/EndsRespondRecyclerView$OnBottomListener;

    return-object p0
.end method

.method public setOnTopListener(La/v/EndsRespondRecyclerView$OnTopListener;)La/v/EndsRespondRecyclerView;
    .locals 0

    iput-object p1, p0, La/v/EndsRespondRecyclerView;->onTopListener:La/v/EndsRespondRecyclerView$OnTopListener;

    return-object p0
.end method
