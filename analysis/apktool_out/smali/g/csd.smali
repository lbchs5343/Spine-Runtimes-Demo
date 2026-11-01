.class public final Lg/csd;
.super Lg/byh;
.source "SourceFile"


# instance fields
.field public final bn:Lg/fct;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/fct;

    invoke-direct {v0, p1}, Lg/fct;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lg/csd;->bn:Lg/fct;

    return-void
.end method


# virtual methods
.method public final bg()Z
    .locals 1

    iget-object v0, p0, Lg/csd;->bn:Lg/fct;

    iget-boolean v0, v0, Lg/fct;->bn:Z

    return v0
.end method

.method public final bi(Z)V
    .locals 1

    iget-object v0, p0, Lg/csd;->bn:Lg/fct;

    iput-boolean p1, v0, Lg/fct;->bn:Z

    return-void
.end method

.method public final bj([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 0

    return-object p1
.end method

.method public final bl(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 0

    return-object p1
.end method

.method public final bm(Z)V
    .locals 0

    return-void
.end method
