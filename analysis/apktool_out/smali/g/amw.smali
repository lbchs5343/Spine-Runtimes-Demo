.class public interface abstract Lg/amw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic _cq:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget-object v0, Lg/apl;->zzb:Lg/apl;

    sget-object v1, Lg/apl;->zzc:Lg/apl;

    sget-object v2, Lg/apl;->zzd:Lg/apl;

    const-string v3, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-static {v3, v0}, Lg/egh;->ba(Ljava/lang/String;Lg/apl;)V

    const-string v4, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    invoke-static {v4, v1}, Lg/egh;->ba(Ljava/lang/String;Lg/apl;)V

    const-string v5, "com.android.vending.billing.ALTERNATIVE_BILLING"

    invoke-static {v5, v2}, Lg/egh;->ba(Ljava/lang/String;Lg/apl;)V

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v0, v6, v3

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v0, 0x3

    aput-object v1, v6, v0

    const/4 v1, 0x4

    aput-object v5, v6, v1

    const/4 v1, 0x5

    aput-object v2, v6, v1

    const/4 v1, 0x0

    invoke-static {v0, v6, v1}, Lg/cil;->h(I[Ljava/lang/Object;Lg/dsg;)Lg/cil;

    return-void
.end method
