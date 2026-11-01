.class public abstract Lg/ebi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/bli;

.field public static final b:Lg/dfe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Lg/dxe;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lg/bli;-><init>(I)V

    sput-object v0, Lg/ebi;->a:Lg/bli;

    goto :goto_0

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Lg/bip;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lg/bli;-><init>(I)V

    sput-object v0, Lg/ebi;->a:Lg/bli;

    goto :goto_0

    :cond_1
    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    new-instance v0, Lg/bgp;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lg/bli;-><init>(I)V

    sput-object v0, Lg/ebi;->a:Lg/bli;

    goto :goto_0

    :cond_2
    new-instance v0, Lg/bli;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lg/bli;-><init>(I)V

    sput-object v0, Lg/ebi;->a:Lg/bli;

    :goto_0
    new-instance v0, Lg/dfe;

    const-string v1, "translationAlpha"

    const/16 v2, 0xd

    const-class v3, Ljava/lang/Float;

    invoke-direct {v0, v2, v3, v1}, Lg/dfe;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lg/ebi;->b:Lg/dfe;

    new-instance v0, Lg/dfe;

    const-string v1, "clipBounds"

    const/16 v2, 0xe

    const-class v3, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v3, v1}, Lg/dfe;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, Lg/ebi;->a:Lg/bli;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lg/bli;->c(Landroid/view/View;IIII)V

    return-void
.end method

.method public static d(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Lg/ebi;->a:Lg/bli;

    invoke-virtual {v0, p0, p1}, Lg/bli;->e(Landroid/view/View;I)V

    return-void
.end method
