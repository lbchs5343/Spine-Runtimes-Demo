.class public abstract Lg/edc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/ejd;

.field public static final b:Lg/ejd;

.field public static final c:Lg/ejd;

.field public static final d:Lg/ejd;

.field public static final e:Lg/ejd;

.field public static final f:Lg/ejd;

.field public static final g:Lg/ejd;

.field public static final h:Lg/ejd;

.field public static final i:Lg/ejd;

.field public static final j:Lg/ejd;

.field public static final k:Lg/ejd;

.field public static final l:Lg/ejd;

.field public static final m:Lg/ejd;

.field public static final n:Lg/ejd;

.field public static final o:Lg/ejd;

.field public static final p:Lg/ejd;

.field public static final q:Lg/ejd;

.field public static final r:Lg/ejd;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lg/gvg;->e:I

    const-string v2, "Google Play In-app Billing API version is less than 3"

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v1, v0, Lg/gvg;->e:I

    const-string v2, "Google Play In-app Billing API version is less than 9"

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object v0

    sput-object v0, Lg/edc;->h:Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v1, v0, Lg/gvg;->e:I

    const-string v1, "Billing service unavailable on device."

    iput-object v1, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object v0

    sput-object v0, Lg/edc;->m:Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    const/4 v2, 0x2

    iput v2, v0, Lg/gvg;->e:I

    iput-object v1, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object v0

    sput-object v0, Lg/edc;->p:Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Lg/gvg;->e:I

    const-string v3, "Client is already in the process of connecting to billing service."

    iput-object v3, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object v0

    sput-object v0, Lg/edc;->e:Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v1, v0, Lg/gvg;->e:I

    const-string v3, "The list of SKUs can\'t be empty."

    iput-object v3, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v1, v0, Lg/gvg;->e:I

    const-string v3, "SKU type can\'t be empty."

    iput-object v3, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v1, v0, Lg/gvg;->e:I

    const-string v3, "Product type can\'t be empty."

    iput-object v3, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object v0

    sput-object v0, Lg/edc;->g:Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    const/4 v3, -0x2

    iput v3, v0, Lg/gvg;->e:I

    const-string v4, "Client does not support extra params."

    iput-object v4, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object v0

    sput-object v0, Lg/edc;->i:Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v1, v0, Lg/gvg;->e:I

    const-string v4, "Invalid purchase token."

    iput-object v4, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object v0

    sput-object v0, Lg/edc;->q:Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    const/4 v4, 0x6

    iput v4, v0, Lg/gvg;->e:I

    const-string v5, "An internal error occurred."

    iput-object v5, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object v0

    sput-object v0, Lg/edc;->a:Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v1, v0, Lg/gvg;->e:I

    const-string v5, "SKU can\'t be null."

    iput-object v5, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    const/4 v5, 0x0

    iput v5, v0, Lg/gvg;->e:I

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object v0

    sput-object v0, Lg/edc;->l:Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    const/4 v5, -0x1

    iput v5, v0, Lg/gvg;->e:I

    const-string v5, "Service connection is disconnected."

    iput-object v5, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object v0

    sput-object v0, Lg/edc;->n:Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v2, v0, Lg/gvg;->e:I

    const-string v2, "Timeout communicating with service."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object v0

    sput-object v0, Lg/edc;->b:Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Client does not support subscriptions."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object v0

    sput-object v0, Lg/edc;->f:Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Client does not support subscriptions update."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Client does not support get purchase history."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Client does not support price change confirmation."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Play Store version installed does not support cross selling products."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Client does not support multi-item purchases."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object v0

    sput-object v0, Lg/edc;->k:Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Client does not support offer_id_token."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object v0

    sput-object v0, Lg/edc;->d:Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Client does not support ProductDetails."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object v0

    sput-object v0, Lg/edc;->c:Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Client does not support in-app messages."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Client does not support user choice billing."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Play Store version installed does not support external offer."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Play Store version installed does not support multi-item purchases with season pass in one cart."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Play Store version installed does not support querying AutoPay plan purchase."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Play Store version installed does not support including suspended subscriptions."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v1, v0, Lg/gvg;->e:I

    const-string v2, "Unknown feature"

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Play Store version installed does not support get billing config."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Query product details with serialized docid is not supported."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Play Store version installed does not support launching external offer flow."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    const/4 v2, 0x4

    iput v2, v0, Lg/gvg;->e:I

    const-string v2, "Item is unavailable for purchase."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object v0

    sput-object v0, Lg/edc;->j:Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Query product details with developer specified account is not supported."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v2, "Play Store version installed does not support alternative billing only."

    iput-object v2, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v1, v0, Lg/gvg;->e:I

    const-string v1, "To use this API you must specify a PurchasesUpdateListener when initializing a BillingClient."

    iput-object v1, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object v0

    sput-object v0, Lg/edc;->o:Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v4, v0, Lg/gvg;->e:I

    const-string v1, "An error occurred while retrieving billing override."

    iput-object v1, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object v0

    sput-object v0, Lg/edc;->r:Lg/ejd;

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput v3, v0, Lg/gvg;->e:I

    const-string v1, "Play Store version installed does not support the provided billing program."

    iput-object v1, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    return-void
.end method

.method public static s(ILjava/lang/String;)Lg/ejd;
    .locals 1

    invoke-static {}, Lg/ejd;->d()Lg/gvg;

    move-result-object v0

    iput p0, v0, Lg/gvg;->e:I

    iput-object p1, v0, Lg/gvg;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/gvg;->h()Lg/ejd;

    move-result-object p0

    return-object p0
.end method
