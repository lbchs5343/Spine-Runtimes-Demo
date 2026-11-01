.class public final synthetic Lg/fhx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/ef;

.field public final synthetic c:Lg/avv;


# direct methods
.method public synthetic constructor <init>(Lg/ef;Lg/avv;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fhx;->b:Lg/ef;

    iput-object p2, p0, Lg/fhx;->c:Lg/avv;

    iput p3, p0, Lg/fhx;->a:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lg/fhx;->b:Lg/ef;

    iget-object p1, p1, Lg/ef;->a:Lg/aoi;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lg/aoi;->b:Ljava/lang/Object;

    check-cast p1, La/v/ColorPickerView;

    iget-object v0, p0, Lg/fhx;->c:Lg/avv;

    iget v1, p0, Lg/fhx;->a:I

    invoke-static {p1, v0, v1}, La/v/ColorPickerView;->h(La/v/ColorPickerView;Lg/avv;I)V

    :cond_0
    return-void
.end method
