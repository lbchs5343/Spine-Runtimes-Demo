.class public final Lg/bpk;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/gu;


# direct methods
.method public constructor <init>(Lg/gu;)V
    .locals 0

    iput-object p1, p0, Lg/bpk;->a:Lg/gu;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lg/bpk;->a:Lg/gu;

    invoke-virtual {v0, p1}, Lg/gu;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lg/bpk;->a:Lg/gu;

    invoke-virtual {v0, p1}, Lg/gu;->c(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
