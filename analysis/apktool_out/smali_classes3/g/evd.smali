.class public final Lg/evd;
.super Lg/fso;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/text/TextPaint;

.field public final synthetic c:Lg/fso;

.field public final synthetic f:Lg/asw;


# direct methods
.method public constructor <init>(Lg/asw;Landroid/content/Context;Landroid/text/TextPaint;Lg/fso;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/evd;->f:Lg/asw;

    iput-object p2, p0, Lg/evd;->a:Landroid/content/Context;

    iput-object p3, p0, Lg/evd;->b:Landroid/text/TextPaint;

    iput-object p4, p0, Lg/evd;->c:Lg/fso;

    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 1

    iget-object v0, p0, Lg/evd;->c:Lg/fso;

    invoke-virtual {v0, p1}, Lg/fso;->d(I)V

    return-void
.end method

.method public final e(Landroid/graphics/Typeface;Z)V
    .locals 3

    iget-object v0, p0, Lg/evd;->a:Landroid/content/Context;

    iget-object v1, p0, Lg/evd;->b:Landroid/text/TextPaint;

    iget-object v2, p0, Lg/evd;->f:Lg/asw;

    invoke-virtual {v2, v0, v1, p1}, Lg/asw;->t(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lg/evd;->c:Lg/fso;

    invoke-virtual {v0, p1, p2}, Lg/fso;->e(Landroid/graphics/Typeface;Z)V

    return-void
.end method
