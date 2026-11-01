.class public Lg/he;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/he;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAYER_TOP:I = 0x1

.field public static final UNDEFINED_CONNECTION_ID:I = -0x1

.field public static final UNDEFINED_ITEM_ID:I = 0x7fffffff

.field public static final UNDEFINED_NODE_ID:J = 0x7fffffff7fffffffL

.field public static final UNDEFINED_SELECTION_INDEX:I = -0x1

.field public static final UNDEFINED_WINDOW_ID:I = -0x1


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private boundsInParent:Landroid/graphics/Rect;

.field private boundsInScreen:Landroid/graphics/Rect;

.field private childNodeInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/he;",
            ">;"
        }
    .end annotation
.end field

.field private className:Ljava/lang/CharSequence;

.field private connectionId:I

.field private contentDescription:Ljava/lang/CharSequence;

.field private drawingOrderInParent:I

.field private error:Ljava/lang/CharSequence;

.field private eventClassName:Ljava/lang/CharSequence;

.field private hintText:Ljava/lang/CharSequence;

.field private index:I

.field private inputType:I

.field private isCheckable:Z

.field private isChecked:Z

.field private isClickable:Ljava/lang/Boolean;

.field private isEditable:Ljava/lang/Boolean;

.field private isEnabled:Z

.field private isFocusable:Z

.field private isFocused:Z

.field private isHeading:Ljava/lang/Boolean;

.field private isImportantForAccessibility:Ljava/lang/Boolean;

.field private isInspected:Z

.field private isLongClickable:Ljava/lang/Boolean;

.field private isMultiLine:Ljava/lang/Boolean;

.field private isPassword:Z

.field private isScrollable:Z

.field private isSelected:Z

.field private isVisibleToUser:Ljava/lang/Boolean;

.field private labelForId:J

.field private labeledById:J

.field private layer:I

.field private liveRegion:I

.field private maxTextLength:I

.field private movementGranularities:I

.field private originalText:Ljava/lang/CharSequence;

.field private packageName:Ljava/lang/CharSequence;

.field private paneTitle:Ljava/lang/CharSequence;

.field private parentNodeId:J

.field private parentNodeInfo:Lg/he;

.field private sealed:Z

.field private sourceNodeId:J

.field private text:Ljava/lang/CharSequence;

.field private textSelectionEnd:I

.field private textSelectionStart:I

.field private tooltipText:Ljava/lang/CharSequence;

.field private traversalAfter:J

.field private traversalBefore:J

.field private viewId:I

.field private viewIdResourceName:Ljava/lang/String;

.field private viewIdResourceNameHuman:Ljava/lang/String;

.field private windowId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/rj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/rj;-><init>(I)V

    sput-object v0, Lg/he;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/he;->windowId:I

    const-wide v1, 0x7fffffff7fffffffL

    iput-wide v1, p0, Lg/he;->sourceNodeId:J

    iput-wide v1, p0, Lg/he;->parentNodeId:J

    iput-wide v1, p0, Lg/he;->labelForId:J

    iput-wide v1, p0, Lg/he;->labeledById:J

    iput-wide v1, p0, Lg/he;->traversalBefore:J

    iput-wide v1, p0, Lg/he;->traversalAfter:J

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lg/he;->boundsInParent:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lg/he;->boundsInScreen:Landroid/graphics/Rect;

    iput v0, p0, Lg/he;->maxTextLength:I

    iput v0, p0, Lg/he;->textSelectionStart:I

    iput v0, p0, Lg/he;->textSelectionEnd:I

    const/4 v1, 0x0

    iput v1, p0, Lg/he;->inputType:I

    iput v1, p0, Lg/he;->liveRegion:I

    iput v0, p0, Lg/he;->connectionId:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lg/he;->childNodeInfoList:Ljava/util/List;

    iput-boolean v1, p0, Lg/he;->isInspected:Z

    iput v0, p0, Lg/he;->layer:I

    iput v0, p0, Lg/he;->index:I

    iput v0, p0, Lg/he;->viewId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lg/he;->sealed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/he;->windowId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lg/he;->sourceNodeId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lg/he;->parentNodeId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lg/he;->labelForId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lg/he;->labeledById:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lg/he;->traversalBefore:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lg/he;->traversalAfter:J

    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iput-object v3, p0, Lg/he;->boundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lg/he;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/he;->drawingOrderInParent:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, p0, Lg/he;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, p0, Lg/he;->eventClassName:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, p0, Lg/he;->className:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, p0, Lg/he;->originalText:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, p0, Lg/he;->text:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, p0, Lg/he;->hintText:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, p0, Lg/he;->error:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, p0, Lg/he;->paneTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, p0, Lg/he;->contentDescription:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lg/he;->tooltipText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/he;->viewIdResourceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/he;->maxTextLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/he;->movementGranularities:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/he;->textSelectionStart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/he;->textSelectionEnd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/he;->inputType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/he;->liveRegion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/he;->connectionId:I

    sget-object v0, Lg/he;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lg/he;->childNodeInfoList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lg/he;->isInspected:Z

    invoke-static {p1}, Lg/aky;->f(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lg/he;->isVisibleToUser:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lg/he;->isEnabled:Z

    invoke-static {p1}, Lg/aky;->f(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lg/he;->isClickable:Ljava/lang/Boolean;

    invoke-static {p1}, Lg/aky;->f(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lg/he;->isLongClickable:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lg/he;->isFocusable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lg/he;->isFocused:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lg/he;->isCheckable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lg/he;->isChecked:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Lg/he;->isScrollable:Z

    invoke-static {p1}, Lg/aky;->f(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lg/he;->isEditable:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lg/he;->isSelected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    :cond_9
    iput-boolean v1, p0, Lg/he;->isPassword:Z

    invoke-static {p1}, Lg/aky;->f(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lg/he;->isMultiLine:Ljava/lang/Boolean;

    invoke-static {p1}, Lg/aky;->f(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lg/he;->isImportantForAccessibility:Ljava/lang/Boolean;

    invoke-static {p1}, Lg/aky;->f(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lg/he;->isHeading:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo;ILjava/lang/CharSequence;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/he;->windowId:I

    const-wide v1, 0x7fffffff7fffffffL

    iput-wide v1, p0, Lg/he;->sourceNodeId:J

    iput-wide v1, p0, Lg/he;->parentNodeId:J

    iput-wide v1, p0, Lg/he;->labelForId:J

    iput-wide v1, p0, Lg/he;->labeledById:J

    iput-wide v1, p0, Lg/he;->traversalBefore:J

    iput-wide v1, p0, Lg/he;->traversalAfter:J

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lg/he;->boundsInParent:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lg/he;->boundsInScreen:Landroid/graphics/Rect;

    iput v0, p0, Lg/he;->maxTextLength:I

    iput v0, p0, Lg/he;->textSelectionStart:I

    iput v0, p0, Lg/he;->textSelectionEnd:I

    const/4 v1, 0x0

    iput v1, p0, Lg/he;->inputType:I

    iput v1, p0, Lg/he;->liveRegion:I

    iput v0, p0, Lg/he;->connectionId:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lg/he;->childNodeInfoList:Ljava/util/List;

    iput-boolean v1, p0, Lg/he;->isInspected:Z

    iput v0, p0, Lg/he;->index:I

    iput v0, p0, Lg/he;->viewId:I

    iput p2, p0, Lg/he;->layer:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result p2

    iput p2, p0, Lg/he;->windowId:I

    const-string p2, "mSourceNodeId"

    invoke-static {p1, p2, v1}, Lg/awt;->ac(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lg/he;->sourceNodeId:J

    iget-object p2, p0, Lg/he;->boundsInParent:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lg/he;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    const/16 p2, 0x18

    invoke-static {p2}, Lg/dyd;->bp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lg/ayr;->v(Landroid/view/accessibility/AccessibilityNodeInfo;)I

    move-result v0

    iput v0, p0, Lg/he;->drawingOrderInParent:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lg/he;->packageName:Ljava/lang/CharSequence;

    iput-object p3, p0, Lg/he;->eventClassName:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lg/he;->className:Ljava/lang/CharSequence;

    const-string p3, "mOriginalText"

    invoke-static {p1, p3, v1}, Lg/awt;->ac(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    iput-object p3, p0, Lg/he;->originalText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lg/he;->text:Ljava/lang/CharSequence;

    const/16 p3, 0x1a

    invoke-static {p3}, Lg/dyd;->bp(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p1}, Lg/cnh;->ac(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lg/he;->hintText:Ljava/lang/CharSequence;

    :cond_1
    const/16 p3, 0x15

    invoke-static {p3}, Lg/dyd;->bp(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lg/he;->error:Ljava/lang/CharSequence;

    :cond_2
    const/16 v0, 0x1c

    invoke-static {v0}, Lg/dyd;->bp(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lg/agk;->s(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lg/he;->paneTitle:Ljava/lang/CharSequence;

    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lg/he;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Lg/dyd;->bp(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lg/ezg;->t(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lg/he;->tooltipText:Ljava/lang/CharSequence;

    :cond_4
    const/16 v1, 0x12

    invoke-static {v1}, Lg/dyd;->bp(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lg/he;->viewIdResourceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lg/he;->viewIdResourceName:Ljava/lang/String;

    const-string v3, "android:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v4, "."

    const-string v5, "/"

    const-string v6, "R."

    if-nez v2, :cond_5

    iget-object v2, p0, Lg/he;->viewIdResourceName:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lg/he;->viewIdResourceNameHuman:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lg/he;->viewIdResourceName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lg/he;->packageName:Ljava/lang/CharSequence;

    invoke-static {v7}, Lg/eyt;->bk(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lg/he;->viewIdResourceNameHuman:Ljava/lang/String;

    :cond_6
    :goto_0
    invoke-static {p3}, Lg/dyd;->bp(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lg/he;->actions:Ljava/util/List;

    :cond_7
    invoke-static {p3}, Lg/dyd;->bp(I)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMaxTextLength()I

    move-result p3

    iput p3, p0, Lg/he;->maxTextLength:I

    :cond_8
    const/16 p3, 0x10

    invoke-static {p3}, Lg/dyd;->bp(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    move-result v2

    iput v2, p0, Lg/he;->movementGranularities:I

    :cond_9
    invoke-static {v1}, Lg/dyd;->bp(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionStart()I

    move-result v2

    iput v2, p0, Lg/he;->textSelectionStart:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionEnd()I

    move-result v2

    iput v2, p0, Lg/he;->textSelectionEnd:I

    :cond_a
    const/16 v2, 0x13

    invoke-static {v2}, Lg/dyd;->bp(I)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getInputType()I

    move-result v3

    iput v3, p0, Lg/he;->inputType:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getLiveRegion()I

    move-result v3

    iput v3, p0, Lg/he;->liveRegion:I

    :cond_b
    invoke-static {p3}, Lg/dyd;->bp(I)Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lg/he;->isVisibleToUser:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lg/he;->isClickable:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lg/he;->isLongClickable:Ljava/lang/Boolean;

    :cond_c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result p3

    iput-boolean p3, p0, Lg/he;->isEnabled:Z

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result p3

    iput-boolean p3, p0, Lg/he;->isFocusable:Z

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result p3

    iput-boolean p3, p0, Lg/he;->isFocused:Z

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result p3

    iput-boolean p3, p0, Lg/he;->isCheckable:Z

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result p3

    iput-boolean p3, p0, Lg/he;->isChecked:Z

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result p3

    iput-boolean p3, p0, Lg/he;->isScrollable:Z

    invoke-static {v1}, Lg/dyd;->bp(I)Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lg/he;->isEditable:Ljava/lang/Boolean;

    :cond_d
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result p3

    iput-boolean p3, p0, Lg/he;->isSelected:Z

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result p3

    iput-boolean p3, p0, Lg/he;->isPassword:Z

    invoke-static {v2}, Lg/dyd;->bp(I)Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isMultiLine()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lg/he;->isMultiLine:Ljava/lang/Boolean;

    :cond_e
    invoke-static {p2}, Lg/dyd;->bp(I)Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-static {p1}, Lg/o;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lg/he;->isImportantForAccessibility:Ljava/lang/Boolean;

    :cond_f
    invoke-static {v0}, Lg/dyd;->bp(I)Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-static {p1}, Lg/agk;->y(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lg/he;->isHeading:Ljava/lang/Boolean;

    :cond_10
    return-void
.end method

.method public static bridge synthetic a(Lg/he;)I
    .locals 0

    iget p0, p0, Lg/he;->index:I

    return p0
.end method

.method public static bridge synthetic b(Lg/he;)I
    .locals 0

    iget p0, p0, Lg/he;->layer:I

    return p0
.end method

.method public static contains(Lg/he;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/he;",
            "II)",
            "Ljava/util/List<",
            "Lg/he;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lg/he;->contains(Lg/he;IILg/bxi;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static contains(Lg/he;IILg/bxi;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/he;",
            "II",
            "Lg/bxi;",
            ")",
            "Ljava/util/List<",
            "Lg/he;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/he;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lg/he;->getBoundsInScreen()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p3, :cond_2

    move-object v3, p3

    check-cast v3, Lg/gpu;

    invoke-virtual {v3, p0}, Lg/gpu;->p(Lg/he;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lg/he;->getParentNodeInfo()Lg/he;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lg/he;->getParentNodeInfo()Lg/he;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lg/he;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Lg/he;->getChild(I)Lg/he;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    new-instance p0, Lg/aqn;

    const/16 p1, 0xd

    invoke-direct {p0, p1}, Lg/aqn;-><init>(I)V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static fromAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;ILjava/lang/CharSequence;)Lg/he;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lg/he;

    invoke-direct {v0, p0, p1, p2}, Lg/he;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;ILjava/lang/CharSequence;)V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lg/he;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    if-nez v4, :cond_2

    const/16 v5, 0x12

    invoke-static {v5}, Lg/dyd;->bp(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh()Z

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_3

    new-instance v5, Lg/he;

    iget v6, p0, Lg/he;->layer:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v5, v4, v6, p2}, Lg/he;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;ILjava/lang/CharSequence;)V

    invoke-virtual {v5, p0}, Lg/he;->setParentNodeInfo(Lg/he;)Lg/he;

    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static toXMLLayout(Landroid/content/Context;Lg/he;I)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "    "

    if-ge v2, p2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_1

    const-string v4, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/he;->getClassNameForLayout()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    const-string v5, " xmlns:android=\"http://schemas.android.com/apk/res/android\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1, p0}, Lg/he;->getViewId(Landroid/content/Context;)I

    move-result v5

    const/4 v6, -0x1

    const-string v7, "\""

    if-eq v5, v6, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "android:id=\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p1}, Lg/he;->getViewIdResourceNameForXMLLayout()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "android:idName=\""

    invoke-static {v3, v4, v0, v6, v5}, Lg/awf;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v5, "android:layout_width=\""

    invoke-static {v4, v0, v5, v3}, Lg/awf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, p0}, Lg/he;->getWidthForLayout(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\"\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android:layout_height=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Lg/he;->getHeightForLayout(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/he;->getPaneTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android:accessibilityPaneTitle=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/he;->getPaneTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p1}, Lg/he;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android:contentDescription=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/he;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p1}, Lg/he;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android:text=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/he;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p1}, Lg/he;->getHintText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android:hint=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/he;->getHintText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p1}, Lg/he;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android:enabled=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/he;->isEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p1}, Lg/he;->isClickable()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android:clickable=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/he;->isClickable()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {p1}, Lg/he;->isLongClickable()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android:longClickable=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/he;->isLongClickable()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {p1}, Lg/he;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android:focusable=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/he;->isFocusable()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {p1}, Lg/he;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android:checked=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/he;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {p1}, Lg/he;->isEditable()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android:editable=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/he;->isEditable()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {p1}, Lg/he;->isPassword()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android:password=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/he;->isPassword()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {p1}, Lg/he;->isMultiLine()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android:singleLine=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/he;->isMultiLine()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {p1}, Lg/he;->isImportantForAccessibility()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android:importantForAccessibility=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/he;->isImportantForAccessibility()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {p1}, Lg/he;->isHeading()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "android:accessibilityHeading=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/he;->isHeading()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {p1}, Lg/he;->getChildCount()I

    move-result v0

    if-lez v0, :cond_15

    const-string v0, ">"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Lg/he;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_14

    invoke-virtual {p1, v1}, Lg/he;->getChild(I)Lg/he;

    move-result-object v5

    if-nez v5, :cond_13

    goto :goto_2

    :cond_13
    add-int/lit8 v6, p2, 0x1

    invoke-static {p0, v5, v6}, Lg/he;->toXMLLayout(Landroid/content/Context;Lg/he;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/he;->getClassNameForLayout()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_15
    const-string p0, "/>"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addChildNodeInfoList(Lg/he;)Lg/he;
    .locals 1

    iget-object v0, p0, Lg/he;->childNodeInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/he;->childNodeInfoList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lg/he;->childNodeInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_17

    :cond_1
    check-cast p1, Lg/he;

    iget-boolean v2, p0, Lg/he;->sealed:Z

    iget-boolean v3, p1, Lg/he;->sealed:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lg/he;->windowId:I

    iget v3, p1, Lg/he;->windowId:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Lg/he;->sourceNodeId:J

    iget-wide v4, p1, Lg/he;->sourceNodeId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Lg/he;->parentNodeId:J

    iget-wide v4, p1, Lg/he;->parentNodeId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Lg/he;->labelForId:J

    iget-wide v4, p1, Lg/he;->labelForId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, Lg/he;->labeledById:J

    iget-wide v4, p1, Lg/he;->labeledById:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    return v1

    :cond_7
    iget-wide v2, p0, Lg/he;->traversalBefore:J

    iget-wide v4, p1, Lg/he;->traversalBefore:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    return v1

    :cond_8
    iget-wide v2, p0, Lg/he;->traversalAfter:J

    iget-wide v4, p1, Lg/he;->traversalAfter:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_9

    return v1

    :cond_9
    iget v2, p0, Lg/he;->drawingOrderInParent:I

    iget v3, p1, Lg/he;->drawingOrderInParent:I

    if-eq v2, v3, :cond_a

    return v1

    :cond_a
    iget v2, p0, Lg/he;->maxTextLength:I

    iget v3, p1, Lg/he;->maxTextLength:I

    if-eq v2, v3, :cond_b

    return v1

    :cond_b
    iget v2, p0, Lg/he;->movementGranularities:I

    iget v3, p1, Lg/he;->movementGranularities:I

    if-eq v2, v3, :cond_c

    return v1

    :cond_c
    iget v2, p0, Lg/he;->textSelectionStart:I

    iget v3, p1, Lg/he;->textSelectionStart:I

    if-eq v2, v3, :cond_d

    return v1

    :cond_d
    iget v2, p0, Lg/he;->textSelectionEnd:I

    iget v3, p1, Lg/he;->textSelectionEnd:I

    if-eq v2, v3, :cond_e

    return v1

    :cond_e
    iget v2, p0, Lg/he;->inputType:I

    iget v3, p1, Lg/he;->inputType:I

    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    iget v2, p0, Lg/he;->liveRegion:I

    iget v3, p1, Lg/he;->liveRegion:I

    if-eq v2, v3, :cond_10

    return v1

    :cond_10
    iget v2, p0, Lg/he;->connectionId:I

    iget v3, p1, Lg/he;->connectionId:I

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    iget-boolean v2, p0, Lg/he;->isInspected:Z

    iget-boolean v3, p1, Lg/he;->isInspected:Z

    if-eq v2, v3, :cond_12

    return v1

    :cond_12
    iget v2, p0, Lg/he;->layer:I

    iget v3, p1, Lg/he;->layer:I

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    iget v2, p0, Lg/he;->index:I

    iget v3, p1, Lg/he;->index:I

    if-eq v2, v3, :cond_14

    return v1

    :cond_14
    iget v2, p0, Lg/he;->viewId:I

    iget v3, p1, Lg/he;->viewId:I

    if-eq v2, v3, :cond_15

    return v1

    :cond_15
    iget-boolean v2, p0, Lg/he;->isEnabled:Z

    iget-boolean v3, p1, Lg/he;->isEnabled:Z

    if-eq v2, v3, :cond_16

    return v1

    :cond_16
    iget-boolean v2, p0, Lg/he;->isFocusable:Z

    iget-boolean v3, p1, Lg/he;->isFocusable:Z

    if-eq v2, v3, :cond_17

    return v1

    :cond_17
    iget-boolean v2, p0, Lg/he;->isFocused:Z

    iget-boolean v3, p1, Lg/he;->isFocused:Z

    if-eq v2, v3, :cond_18

    return v1

    :cond_18
    iget-boolean v2, p0, Lg/he;->isCheckable:Z

    iget-boolean v3, p1, Lg/he;->isCheckable:Z

    if-eq v2, v3, :cond_19

    return v1

    :cond_19
    iget-boolean v2, p0, Lg/he;->isChecked:Z

    iget-boolean v3, p1, Lg/he;->isChecked:Z

    if-eq v2, v3, :cond_1a

    return v1

    :cond_1a
    iget-boolean v2, p0, Lg/he;->isScrollable:Z

    iget-boolean v3, p1, Lg/he;->isScrollable:Z

    if-eq v2, v3, :cond_1b

    return v1

    :cond_1b
    iget-boolean v2, p0, Lg/he;->isSelected:Z

    iget-boolean v3, p1, Lg/he;->isSelected:Z

    if-eq v2, v3, :cond_1c

    return v1

    :cond_1c
    iget-boolean v2, p0, Lg/he;->isPassword:Z

    iget-boolean v3, p1, Lg/he;->isPassword:Z

    if-eq v2, v3, :cond_1d

    return v1

    :cond_1d
    iget-object v2, p0, Lg/he;->boundsInParent:Landroid/graphics/Rect;

    if-eqz v2, :cond_1e

    iget-object v3, p1, Lg/he;->boundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_0

    :cond_1e
    iget-object v2, p1, Lg/he;->boundsInParent:Landroid/graphics/Rect;

    if-eqz v2, :cond_1f

    :goto_0
    return v1

    :cond_1f
    iget-object v2, p0, Lg/he;->boundsInScreen:Landroid/graphics/Rect;

    if-eqz v2, :cond_20

    iget-object v3, p1, Lg/he;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_1

    :cond_20
    iget-object v2, p1, Lg/he;->boundsInScreen:Landroid/graphics/Rect;

    if-eqz v2, :cond_21

    :goto_1
    return v1

    :cond_21
    iget-object v2, p0, Lg/he;->packageName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_22

    iget-object v3, p1, Lg/he;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_2

    :cond_22
    iget-object v2, p1, Lg/he;->packageName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_23

    :goto_2
    return v1

    :cond_23
    iget-object v2, p0, Lg/he;->eventClassName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_24

    iget-object v3, p1, Lg/he;->eventClassName:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_3

    :cond_24
    iget-object v2, p1, Lg/he;->eventClassName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_25

    :goto_3
    return v1

    :cond_25
    iget-object v2, p0, Lg/he;->className:Ljava/lang/CharSequence;

    if-eqz v2, :cond_26

    iget-object v3, p1, Lg/he;->className:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_4

    :cond_26
    iget-object v2, p1, Lg/he;->className:Ljava/lang/CharSequence;

    if-eqz v2, :cond_27

    :goto_4
    return v1

    :cond_27
    iget-object v2, p0, Lg/he;->originalText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_28

    iget-object v3, p1, Lg/he;->originalText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_5

    :cond_28
    iget-object v2, p1, Lg/he;->originalText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_29

    :goto_5
    return v1

    :cond_29
    iget-object v2, p0, Lg/he;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2a

    iget-object v3, p1, Lg/he;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_6

    :cond_2a
    iget-object v2, p1, Lg/he;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2b

    :goto_6
    return v1

    :cond_2b
    iget-object v2, p0, Lg/he;->hintText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2c

    iget-object v3, p1, Lg/he;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_7

    :cond_2c
    iget-object v2, p1, Lg/he;->hintText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2d

    :goto_7
    return v1

    :cond_2d
    iget-object v2, p0, Lg/he;->error:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2e

    iget-object v3, p1, Lg/he;->error:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_8

    :cond_2e
    iget-object v2, p1, Lg/he;->error:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2f

    :goto_8
    return v1

    :cond_2f
    iget-object v2, p0, Lg/he;->paneTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_30

    iget-object v3, p1, Lg/he;->paneTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_9

    :cond_30
    iget-object v2, p1, Lg/he;->paneTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_31

    :goto_9
    return v1

    :cond_31
    iget-object v2, p0, Lg/he;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_32

    iget-object v3, p1, Lg/he;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto :goto_a

    :cond_32
    iget-object v2, p1, Lg/he;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_33

    :goto_a
    return v1

    :cond_33
    iget-object v2, p0, Lg/he;->tooltipText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_34

    iget-object v3, p1, Lg/he;->tooltipText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    goto :goto_b

    :cond_34
    iget-object v2, p1, Lg/he;->tooltipText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_35

    :goto_b
    return v1

    :cond_35
    iget-object v2, p0, Lg/he;->viewIdResourceName:Ljava/lang/String;

    if-eqz v2, :cond_36

    iget-object v3, p1, Lg/he;->viewIdResourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    goto :goto_c

    :cond_36
    iget-object v2, p1, Lg/he;->viewIdResourceName:Ljava/lang/String;

    if-eqz v2, :cond_37

    :goto_c
    return v1

    :cond_37
    iget-object v2, p0, Lg/he;->actions:Ljava/util/List;

    if-eqz v2, :cond_38

    iget-object v3, p1, Lg/he;->actions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_d

    :cond_38
    iget-object v2, p1, Lg/he;->actions:Ljava/util/List;

    if-eqz v2, :cond_39

    :goto_d
    return v1

    :cond_39
    iget-object v2, p0, Lg/he;->childNodeInfoList:Ljava/util/List;

    if-eqz v2, :cond_3a

    iget-object v3, p1, Lg/he;->childNodeInfoList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_e

    :cond_3a
    iget-object v2, p1, Lg/he;->childNodeInfoList:Ljava/util/List;

    if-eqz v2, :cond_3b

    :goto_e
    return v1

    :cond_3b
    iget-object v2, p0, Lg/he;->parentNodeInfo:Lg/he;

    if-eqz v2, :cond_3c

    iget-object v3, p1, Lg/he;->parentNodeInfo:Lg/he;

    invoke-virtual {v2, v3}, Lg/he;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_f

    :cond_3c
    iget-object v2, p1, Lg/he;->parentNodeInfo:Lg/he;

    if-eqz v2, :cond_3d

    :goto_f
    return v1

    :cond_3d
    iget-object v2, p0, Lg/he;->viewIdResourceNameHuman:Ljava/lang/String;

    if-eqz v2, :cond_3e

    iget-object v3, p1, Lg/he;->viewIdResourceNameHuman:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto :goto_10

    :cond_3e
    iget-object v2, p1, Lg/he;->viewIdResourceNameHuman:Ljava/lang/String;

    if-eqz v2, :cond_3f

    :goto_10
    return v1

    :cond_3f
    iget-object v2, p0, Lg/he;->isVisibleToUser:Ljava/lang/Boolean;

    if-eqz v2, :cond_40

    iget-object v3, p1, Lg/he;->isVisibleToUser:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_11

    :cond_40
    iget-object v2, p1, Lg/he;->isVisibleToUser:Ljava/lang/Boolean;

    if-eqz v2, :cond_41

    :goto_11
    return v1

    :cond_41
    iget-object v2, p0, Lg/he;->isClickable:Ljava/lang/Boolean;

    if-eqz v2, :cond_42

    iget-object v3, p1, Lg/he;->isClickable:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    goto :goto_12

    :cond_42
    iget-object v2, p1, Lg/he;->isClickable:Ljava/lang/Boolean;

    if-eqz v2, :cond_43

    :goto_12
    return v1

    :cond_43
    iget-object v2, p0, Lg/he;->isLongClickable:Ljava/lang/Boolean;

    if-eqz v2, :cond_44

    iget-object v3, p1, Lg/he;->isLongClickable:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    goto :goto_13

    :cond_44
    iget-object v2, p1, Lg/he;->isLongClickable:Ljava/lang/Boolean;

    if-eqz v2, :cond_45

    :goto_13
    return v1

    :cond_45
    iget-object v2, p0, Lg/he;->isEditable:Ljava/lang/Boolean;

    if-eqz v2, :cond_46

    iget-object v3, p1, Lg/he;->isEditable:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    goto :goto_14

    :cond_46
    iget-object v2, p1, Lg/he;->isEditable:Ljava/lang/Boolean;

    if-eqz v2, :cond_47

    :goto_14
    return v1

    :cond_47
    iget-object v2, p0, Lg/he;->isMultiLine:Ljava/lang/Boolean;

    if-eqz v2, :cond_48

    iget-object v3, p1, Lg/he;->isMultiLine:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    goto :goto_15

    :cond_48
    iget-object v2, p1, Lg/he;->isMultiLine:Ljava/lang/Boolean;

    if-eqz v2, :cond_49

    :goto_15
    return v1

    :cond_49
    iget-object v2, p0, Lg/he;->isImportantForAccessibility:Ljava/lang/Boolean;

    if-eqz v2, :cond_4a

    iget-object v3, p1, Lg/he;->isImportantForAccessibility:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    goto :goto_16

    :cond_4a
    iget-object v2, p1, Lg/he;->isImportantForAccessibility:Ljava/lang/Boolean;

    if-eqz v2, :cond_4b

    :goto_16
    return v1

    :cond_4b
    iget-object v2, p0, Lg/he;->isHeading:Ljava/lang/Boolean;

    iget-object p1, p1, Lg/he;->isHeading:Ljava/lang/Boolean;

    if-eqz v2, :cond_4c

    invoke-virtual {v2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4c
    if-nez p1, :cond_4d

    return v0

    :cond_4d
    :goto_17
    return v1
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/he;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getArea()I
    .locals 2

    invoke-virtual {p0}, Lg/he;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lg/he;->getHeight()I

    move-result v1

    mul-int v1, v1, v0

    return v1
.end method

.method public getBoundsHuman(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p3}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const v0, 0x7f1202af

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1202ae

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "px, "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "px]\n"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f120276

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-static {p1, v4}, Lg/fso;->aa(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "dp, "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-static {p1, v5}, Lg/fso;->aa(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "dp]\n"

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f120278

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lg/fso;->aa(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Lg/fso;->aa(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dp]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBoundsInParent()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lg/he;->boundsInParent:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getBoundsInParent(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lg/he;->boundsInParent:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getBoundsInParentHuman(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lg/he;->boundsInParent:Landroid/graphics/Rect;

    const v1, 0x7f1202a7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lg/he;->getBoundsHuman(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBoundsInParentSimple()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/he;->boundsInParent:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lg/he;->getBoundsSimple(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoundsInScreen()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lg/he;->boundsInScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lg/he;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getBoundsInScreenHuman(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lg/he;->boundsInScreen:Landroid/graphics/Rect;

    const v1, 0x7f1202a9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lg/he;->getBoundsHuman(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBoundsInScreenSimple()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/he;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lg/he;->getBoundsSimple(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoundsSimple(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChild(I)Lg/he;
    .locals 1

    iget-object v0, p0, Lg/he;->childNodeInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/he;->childNodeInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/he;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lg/he;->childNodeInfoList:Ljava/util/List;

    invoke-static {v0}, Lg/acw;->bo(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public getChildNodeInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/he;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg/he;->childNodeInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lg/he;->className:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getClassNameForLayout()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lg/he;->className:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "android.widget."

    invoke-static {v0, v1}, Lg/eyt;->aq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionId()I
    .locals 1

    iget v0, p0, Lg/he;->connectionId:I

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lg/he;->contentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDrawingOrderInParent()I
    .locals 1

    iget v0, p0, Lg/he;->drawingOrderInParent:I

    return v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lg/he;->error:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEventClassName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lg/he;->eventClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    iget-object v0, p0, Lg/he;->boundsInScreen:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public getHeight(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lg/he;->getHeight()I

    move-result v0

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    if-gtz v0, :cond_0

    const-string v2, " Hidden"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "px ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v0, v0

    invoke-static {p1, v0}, Lg/fso;->ab(Landroid/content/Context;F)F

    move-result p1

    float-to-double v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dp"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-static {v3, v2, p1}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeightForLayout(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lg/he;->getHeight()I

    move-result v0

    iget-object v1, p0, Lg/he;->parentNodeInfo:Lg/he;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lg/he;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string p1, "match_parent"

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lg/he;->getHeightInDP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeightInDP(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lg/he;->getHeight()I

    move-result v0

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v0, v0

    invoke-static {p1, v0}, Lg/fso;->ab(Landroid/content/Context;F)F

    move-result p1

    float-to-double v3, p1

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lg/he;->hintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lg/he;->index:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    iget v0, p0, Lg/he;->inputType:I

    return v0
.end method

.method public getLabelForId()J
    .locals 2

    iget-wide v0, p0, Lg/he;->labelForId:J

    return-wide v0
.end method

.method public getLabeledById()J
    .locals 2

    iget-wide v0, p0, Lg/he;->labeledById:J

    return-wide v0
.end method

.method public getLayer()I
    .locals 1

    iget v0, p0, Lg/he;->layer:I

    return v0
.end method

.method public getLiveRegion()I
    .locals 1

    iget v0, p0, Lg/he;->liveRegion:I

    return v0
.end method

.method public getMaxTextLength()I
    .locals 1

    iget v0, p0, Lg/he;->maxTextLength:I

    return v0
.end method

.method public getMovementGranularities()I
    .locals 1

    iget v0, p0, Lg/he;->movementGranularities:I

    return v0
.end method

.method public getOriginalText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lg/he;->originalText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lg/he;->packageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPaneTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lg/he;->paneTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getParentNodeId()J
    .locals 2

    iget-wide v0, p0, Lg/he;->parentNodeId:J

    return-wide v0
.end method

.method public getParentNodeInfo()Lg/he;
    .locals 1

    iget-object v0, p0, Lg/he;->parentNodeInfo:Lg/he;

    return-object v0
.end method

.method public getSourceNodeId()J
    .locals 2

    iget-wide v0, p0, Lg/he;->sourceNodeId:J

    return-wide v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lg/he;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextSelectionEnd()I
    .locals 1

    iget v0, p0, Lg/he;->textSelectionEnd:I

    return v0
.end method

.method public getTextSelectionStart()I
    .locals 1

    iget v0, p0, Lg/he;->textSelectionStart:I

    return v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lg/he;->tooltipText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTraversalAfter()J
    .locals 2

    iget-wide v0, p0, Lg/he;->traversalAfter:J

    return-wide v0
.end method

.method public getTraversalBefore()J
    .locals 2

    iget-wide v0, p0, Lg/he;->traversalBefore:J

    return-wide v0
.end method

.method public getViewId(Landroid/content/Context;)I
    .locals 2

    iget v0, p0, Lg/he;->viewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lg/he;->packageName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lg/he;->viewIdResourceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    iget-object v0, p0, Lg/he;->packageName:Ljava/lang/CharSequence;

    invoke-static {v0}, Lg/eyt;->bp(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lg/he;->viewIdResourceName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lg/he;->viewId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    invoke-static {p1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_1
    invoke-static {p1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    invoke-static {p1}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    iget p1, p0, Lg/he;->viewId:I

    return p1

    :cond_2
    :goto_4
    iget p1, p0, Lg/he;->viewId:I

    return p1
.end method

.method public getViewIdIdHex(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lg/he;->getViewId(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string p1, "0xffffffff"

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lg/he;->getViewId(Landroid/content/Context;)I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getViewIdResourceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/he;->viewIdResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getViewIdResourceNameForXMLLayout()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lg/he;->viewIdResourceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/he;->viewIdResourceName:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/he;->viewIdResourceName:Ljava/lang/String;

    iget-object v1, p0, Lg/he;->packageName:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lg/he;->viewIdResourceName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lg/he;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "android:"

    const-string v2, "@android:"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewIdResourceNameHuman()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/he;->viewIdResourceNameHuman:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    iget-object v0, p0, Lg/he;->boundsInScreen:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public getWidth(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lg/he;->getWidth()I

    move-result v0

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    if-gtz v0, :cond_0

    const-string v2, " Hidden"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "px ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v0, v0

    invoke-static {p1, v0}, Lg/fso;->ab(Landroid/content/Context;F)F

    move-result p1

    float-to-double v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dp"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-static {v3, v2, p1}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWidthForLayout(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lg/he;->getWidth()I

    move-result v0

    iget-object v1, p0, Lg/he;->parentNodeInfo:Lg/he;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lg/he;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string p1, "match_parent"

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lg/he;->getWidthInDP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWidthInDP(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lg/he;->getWidth()I

    move-result v0

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v0, v0

    invoke-static {p1, v0}, Lg/fso;->ab(Landroid/content/Context;F)F

    move-result p1

    float-to-double v3, p1

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWindowId()I
    .locals 1

    iget v0, p0, Lg/he;->windowId:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    iget-boolean v0, p0, Lg/he;->sealed:Z

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/he;->windowId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lg/he;->sourceNodeId:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lg/he;->parentNodeId:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lg/he;->labelForId:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lg/he;->labeledById:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lg/he;->traversalBefore:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lg/he;->traversalAfter:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->boundsInParent:Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->boundsInScreen:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/he;->drawingOrderInParent:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->packageName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->eventClassName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->className:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->originalText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->hintText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->error:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->paneTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->tooltipText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->viewIdResourceName:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    const/4 v1, 0x0

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->actions:Ljava/util/List;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    const/4 v1, 0x0

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/he;->maxTextLength:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/he;->movementGranularities:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/he;->textSelectionStart:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/he;->textSelectionEnd:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/he;->inputType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/he;->liveRegion:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/he;->connectionId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/he;->isInspected:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/he;->layer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/he;->index:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->viewIdResourceNameHuman:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_e
    const/4 v1, 0x0

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/he;->viewId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->isVisibleToUser:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_f
    const/4 v1, 0x0

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/he;->isEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->isClickable:Ljava/lang/Boolean;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_10
    const/4 v1, 0x0

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->isLongClickable:Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_11
    const/4 v1, 0x0

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/he;->isFocusable:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/he;->isFocused:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/he;->isCheckable:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/he;->isChecked:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/he;->isScrollable:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->isEditable:Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_12
    const/4 v1, 0x0

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/he;->isSelected:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/he;->isPassword:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->isMultiLine:Ljava/lang/Boolean;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_13
    const/4 v1, 0x0

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->isImportantForAccessibility:Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_14

    :cond_14
    const/4 v1, 0x0

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/he;->isHeading:Ljava/lang/Boolean;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :cond_15
    add-int/2addr v0, v2

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    iget-boolean v0, p0, Lg/he;->isCheckable:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lg/he;->isChecked:Z

    return v0
.end method

.method public isClickable()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lg/he;->isClickable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEditable()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lg/he;->isEditable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lg/he;->isEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    iget-boolean v0, p0, Lg/he;->isFocusable:Z

    return v0
.end method

.method public isFocused()Z
    .locals 1

    iget-boolean v0, p0, Lg/he;->isFocused:Z

    return v0
.end method

.method public isHeading()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lg/he;->isHeading:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isImportantForAccessibility()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lg/he;->isImportantForAccessibility:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isInspected()Z
    .locals 1

    iget-boolean v0, p0, Lg/he;->isInspected:Z

    return v0
.end method

.method public isLongClickable()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lg/he;->isLongClickable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isMultiLine()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lg/he;->isMultiLine:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isPassword()Z
    .locals 1

    iget-boolean v0, p0, Lg/he;->isPassword:Z

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    iget-boolean v0, p0, Lg/he;->isScrollable:Z

    return v0
.end method

.method public isSealed()Z
    .locals 1

    iget-boolean v0, p0, Lg/he;->sealed:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lg/he;->isSelected:Z

    return v0
.end method

.method public isVisibleToUser()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lg/he;->isVisibleToUser:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setActions(Ljava/util/List;)Lg/he;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;)",
            "Lg/he;"
        }
    .end annotation

    iput-object p1, p0, Lg/he;->actions:Ljava/util/List;

    return-object p0
.end method

.method public setChildNodeInfoList(Ljava/util/List;)Lg/he;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/he;",
            ">;)",
            "Lg/he;"
        }
    .end annotation

    iput-object p1, p0, Lg/he;->childNodeInfoList:Ljava/util/List;

    return-object p0
.end method

.method public setClassName(Ljava/lang/CharSequence;)Lg/he;
    .locals 0

    iput-object p1, p0, Lg/he;->className:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setConnectionId(I)Lg/he;
    .locals 0

    iput p1, p0, Lg/he;->connectionId:I

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lg/he;
    .locals 0

    iput-object p1, p0, Lg/he;->contentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDrawingOrderInParent(I)Lg/he;
    .locals 0

    iput p1, p0, Lg/he;->drawingOrderInParent:I

    return-object p0
.end method

.method public setError(Ljava/lang/CharSequence;)Lg/he;
    .locals 0

    iput-object p1, p0, Lg/he;->error:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEventClassName(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lg/he;->eventClassName:Ljava/lang/CharSequence;

    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;)Lg/he;
    .locals 0

    iput-object p1, p0, Lg/he;->hintText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setIndex(I)Lg/he;
    .locals 0

    iput p1, p0, Lg/he;->index:I

    return-object p0
.end method

.method public setInputType(I)Lg/he;
    .locals 0

    iput p1, p0, Lg/he;->inputType:I

    return-object p0
.end method

.method public setInspected(Z)Lg/he;
    .locals 0

    iput-boolean p1, p0, Lg/he;->isInspected:Z

    return-object p0
.end method

.method public setLabelForId(J)Lg/he;
    .locals 0

    iput-wide p1, p0, Lg/he;->labelForId:J

    return-object p0
.end method

.method public setLabeledById(J)Lg/he;
    .locals 0

    iput-wide p1, p0, Lg/he;->labeledById:J

    return-object p0
.end method

.method public setLayer(I)Lg/he;
    .locals 0

    iput p1, p0, Lg/he;->layer:I

    return-object p0
.end method

.method public setLiveRegion(I)Lg/he;
    .locals 0

    iput p1, p0, Lg/he;->liveRegion:I

    return-object p0
.end method

.method public setMaxTextLength(I)Lg/he;
    .locals 0

    iput p1, p0, Lg/he;->maxTextLength:I

    return-object p0
.end method

.method public setMovementGranularities(I)Lg/he;
    .locals 0

    iput p1, p0, Lg/he;->movementGranularities:I

    return-object p0
.end method

.method public setOriginalText(Ljava/lang/CharSequence;)Lg/he;
    .locals 0

    iput-object p1, p0, Lg/he;->originalText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/CharSequence;)Lg/he;
    .locals 0

    iput-object p1, p0, Lg/he;->packageName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPaneTitle(Ljava/lang/CharSequence;)Lg/he;
    .locals 0

    iput-object p1, p0, Lg/he;->paneTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setParentNodeId(J)Lg/he;
    .locals 0

    iput-wide p1, p0, Lg/he;->parentNodeId:J

    return-object p0
.end method

.method public setParentNodeInfo(Lg/he;)Lg/he;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p0}, Lg/he;->addChildNodeInfoList(Lg/he;)Lg/he;

    iput-object p1, p0, Lg/he;->parentNodeInfo:Lg/he;

    return-object p0
.end method

.method public setSealed(Z)Lg/he;
    .locals 0

    iput-boolean p1, p0, Lg/he;->sealed:Z

    return-object p0
.end method

.method public setSourceNodeId(J)Lg/he;
    .locals 0

    iput-wide p1, p0, Lg/he;->sourceNodeId:J

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lg/he;
    .locals 0

    iput-object p1, p0, Lg/he;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTextSelectionEnd(I)Lg/he;
    .locals 0

    iput p1, p0, Lg/he;->textSelectionEnd:I

    return-object p0
.end method

.method public setTextSelectionStart(I)Lg/he;
    .locals 0

    iput p1, p0, Lg/he;->textSelectionStart:I

    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Lg/he;
    .locals 0

    iput-object p1, p0, Lg/he;->tooltipText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTraversalAfter(J)Lg/he;
    .locals 0

    iput-wide p1, p0, Lg/he;->traversalAfter:J

    return-object p0
.end method

.method public setTraversalBefore(J)Lg/he;
    .locals 0

    iput-wide p1, p0, Lg/he;->traversalBefore:J

    return-object p0
.end method

.method public setViewIdResourceName(Ljava/lang/String;)Lg/he;
    .locals 0

    iput-object p1, p0, Lg/he;->viewIdResourceName:Ljava/lang/String;

    return-object p0
.end method

.method public setViewIdResourceNameHuman(Ljava/lang/String;)Lg/he;
    .locals 0

    iput-object p1, p0, Lg/he;->viewIdResourceNameHuman:Ljava/lang/String;

    return-object p0
.end method

.method public setWindowId(I)Lg/he;
    .locals 0

    iput p1, p0, Lg/he;->windowId:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UINodeInfo{childCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/he;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->eventClassName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->className:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", boundsInParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->boundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", boundsInScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawingOrderInParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/he;->drawingOrderInParent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", originalText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->originalText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hintText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->error:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paneTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->paneTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tooltipText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->tooltipText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viewIdResourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->viewIdResourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxTextLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/he;->maxTextLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", movementGranularities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/he;->movementGranularities:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textSelectionStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/he;->textSelectionStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textSelectionEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/he;->textSelectionEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inputType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/he;->inputType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", liveRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/he;->liveRegion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", connectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/he;->connectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/he;->layer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/he;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", viewIdResourceNameHuman="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->viewIdResourceNameHuman:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", viewId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/he;->viewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isVisibleToUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->isVisibleToUser:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/he;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isClickable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->isClickable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLongClickable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->isLongClickable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFocusable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/he;->isFocusable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFocused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/he;->isFocused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCheckable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/he;->isCheckable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/he;->isChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isScrollable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/he;->isScrollable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEditable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->isEditable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/he;->isSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/he;->isPassword:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMultiLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->isMultiLine:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isImportantForAccessibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->isImportantForAccessibility:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isHeading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/he;->isHeading:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sealed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/he;->sealed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", windowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/he;->windowId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sourceNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/he;->sourceNodeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", parentNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/he;->parentNodeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", labelForId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/he;->labelForId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", labeledById="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/he;->labeledById:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", traversalBefore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/he;->traversalBefore:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", traversalAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/he;->traversalAfter:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-boolean v0, p0, Lg/he;->sealed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lg/he;->windowId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lg/he;->sourceNodeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lg/he;->parentNodeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lg/he;->labelForId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lg/he;->labeledById:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lg/he;->traversalBefore:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lg/he;->traversalAfter:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lg/he;->boundsInParent:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lg/he;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lg/he;->drawingOrderInParent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lg/he;->packageName:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lg/he;->eventClassName:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lg/he;->className:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lg/he;->originalText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lg/he;->text:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lg/he;->hintText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lg/he;->error:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lg/he;->paneTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lg/he;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lg/he;->tooltipText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, Lg/he;->viewIdResourceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lg/he;->maxTextLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/he;->movementGranularities:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/he;->textSelectionStart:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/he;->textSelectionEnd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/he;->inputType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/he;->liveRegion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/he;->connectionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lg/he;->childNodeInfoList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-boolean p2, p0, Lg/he;->isInspected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lg/he;->isVisibleToUser:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lg/aky;->ai(Landroid/os/Parcel;Ljava/lang/Boolean;)V

    iget-boolean p2, p0, Lg/he;->isEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lg/he;->isClickable:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lg/aky;->ai(Landroid/os/Parcel;Ljava/lang/Boolean;)V

    iget-object p2, p0, Lg/he;->isLongClickable:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lg/aky;->ai(Landroid/os/Parcel;Ljava/lang/Boolean;)V

    iget-boolean p2, p0, Lg/he;->isFocusable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/he;->isFocused:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/he;->isCheckable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/he;->isChecked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/he;->isScrollable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lg/he;->isEditable:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lg/aky;->ai(Landroid/os/Parcel;Ljava/lang/Boolean;)V

    iget-boolean p2, p0, Lg/he;->isSelected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/he;->isPassword:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lg/he;->isMultiLine:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lg/aky;->ai(Landroid/os/Parcel;Ljava/lang/Boolean;)V

    iget-object p2, p0, Lg/he;->isImportantForAccessibility:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lg/aky;->ai(Landroid/os/Parcel;Ljava/lang/Boolean;)V

    iget-object p2, p0, Lg/he;->isHeading:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lg/aky;->ai(Landroid/os/Parcel;Ljava/lang/Boolean;)V

    return-void
.end method
