.class public La/v/DragLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private dragView:Landroid/view/View;

.field private onDragListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getDragView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, La/v/DragLinearLayout;->dragView:Landroid/view/View;

    return-object v0
.end method

.method public getOnDragListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, La/v/DragLinearLayout;->onDragListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, La/v/DragLinearLayout;->onDragListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, La/v/DragLinearLayout;->dragView:Landroid/view/View;

    if-nez v1, :cond_0

    move-object v1, p0

    :cond_0
    invoke-interface {v0, v1, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDragView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, La/v/DragLinearLayout;->dragView:Landroid/view/View;

    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, La/v/DragLinearLayout;->onDragListener:Landroid/view/View$OnTouchListener;

    return-void
.end method
