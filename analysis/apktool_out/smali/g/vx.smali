.class public final synthetic Lg/vx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:[Lg/hcd;


# direct methods
.method public synthetic constructor <init>([Lg/hcd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/vx;->a:[Lg/hcd;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/vx;->a:[Lg/hcd;

    aget-object p1, v0, p1

    return-object p1
.end method
