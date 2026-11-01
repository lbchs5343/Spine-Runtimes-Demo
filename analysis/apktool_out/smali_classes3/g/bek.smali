.class public final Lg/bek;
.super Lg/dzm;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/fso;

.field public final synthetic b:Lg/asw;


# direct methods
.method public constructor <init>(Lg/asw;Lg/fso;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bek;->b:Lg/asw;

    iput-object p2, p0, Lg/bek;->a:Lg/fso;

    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 2

    iget-object v0, p0, Lg/bek;->b:Lg/asw;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/asw;->d:Z

    iget-object v0, p0, Lg/bek;->a:Lg/fso;

    invoke-virtual {v0, p1}, Lg/fso;->d(I)V

    return-void
.end method

.method public final d(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Lg/bek;->b:Lg/asw;

    iget v1, v0, Lg/asw;->e:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, v0, Lg/asw;->j:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lg/asw;->d:Z

    iget-object p1, v0, Lg/asw;->j:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    iget-object v1, p0, Lg/bek;->a:Lg/fso;

    invoke-virtual {v1, p1, v0}, Lg/fso;->e(Landroid/graphics/Typeface;Z)V

    return-void
.end method
