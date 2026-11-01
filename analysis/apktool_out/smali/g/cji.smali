.class public final synthetic Lg/cji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$DurationScaleChangeListener;


# instance fields
.field public final synthetic a:Lg/gtb;


# direct methods
.method public synthetic constructor <init>(Lg/gtb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cji;->a:Lg/gtb;

    return-void
.end method


# virtual methods
.method public final onChanged(F)V
    .locals 1

    iget-object v0, p0, Lg/cji;->a:Lg/gtb;

    iget-object v0, v0, Lg/gtb;->b:Ljava/lang/Object;

    check-cast v0, Lg/cpp;

    iput p1, v0, Lg/cpp;->i:F

    return-void
.end method
