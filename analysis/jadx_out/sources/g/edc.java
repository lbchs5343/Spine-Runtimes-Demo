package g;

/* loaded from: classes.dex */
public abstract class edc {

    /* renamed from: a, reason: collision with root package name */
    public static final ejd f15337a;

    /* renamed from: b, reason: collision with root package name */
    public static final ejd f15338b;

    /* renamed from: c, reason: collision with root package name */
    public static final ejd f15339c;

    /* renamed from: d, reason: collision with root package name */
    public static final ejd f15340d;

    /* renamed from: e, reason: collision with root package name */
    public static final ejd f15341e;

    /* renamed from: f, reason: collision with root package name */
    public static final ejd f15342f;

    /* renamed from: g, reason: collision with root package name */
    public static final ejd f15343g;
    public static final ejd h;
    public static final ejd i;
    public static final ejd j;
    public static final ejd k;
    public static final ejd l;
    public static final ejd m;
    public static final ejd n;
    public static final ejd o;
    public static final ejd p;
    public static final ejd q;
    public static final ejd r;

    static {
        gvg d2 = ejd.d();
        d2.f18813e = 3;
        d2.f18811c = "Google Play In-app Billing API version is less than 3";
        d2.h();
        gvg d3 = ejd.d();
        d3.f18813e = 3;
        d3.f18811c = "Google Play In-app Billing API version is less than 9";
        h = d3.h();
        gvg d4 = ejd.d();
        d4.f18813e = 3;
        d4.f18811c = "Billing service unavailable on device.";
        m = d4.h();
        gvg d5 = ejd.d();
        d5.f18813e = 2;
        d5.f18811c = "Billing service unavailable on device.";
        p = d5.h();
        gvg d6 = ejd.d();
        d6.f18813e = 5;
        d6.f18811c = "Client is already in the process of connecting to billing service.";
        f15341e = d6.h();
        gvg d7 = ejd.d();
        d7.f18813e = 5;
        d7.f18811c = "The list of SKUs can't be empty.";
        d7.h();
        gvg d8 = ejd.d();
        d8.f18813e = 5;
        d8.f18811c = "SKU type can't be empty.";
        d8.h();
        gvg d9 = ejd.d();
        d9.f18813e = 5;
        d9.f18811c = "Product type can't be empty.";
        f15343g = d9.h();
        gvg d10 = ejd.d();
        d10.f18813e = -2;
        d10.f18811c = "Client does not support extra params.";
        i = d10.h();
        gvg d11 = ejd.d();
        d11.f18813e = 5;
        d11.f18811c = "Invalid purchase token.";
        q = d11.h();
        gvg d12 = ejd.d();
        d12.f18813e = 6;
        d12.f18811c = "An internal error occurred.";
        f15337a = d12.h();
        gvg d13 = ejd.d();
        d13.f18813e = 5;
        d13.f18811c = "SKU can't be null.";
        d13.h();
        gvg d14 = ejd.d();
        d14.f18813e = 0;
        l = d14.h();
        gvg d15 = ejd.d();
        d15.f18813e = -1;
        d15.f18811c = "Service connection is disconnected.";
        n = d15.h();
        gvg d16 = ejd.d();
        d16.f18813e = 2;
        d16.f18811c = "Timeout communicating with service.";
        f15338b = d16.h();
        gvg d17 = ejd.d();
        d17.f18813e = -2;
        d17.f18811c = "Client does not support subscriptions.";
        f15342f = d17.h();
        gvg d18 = ejd.d();
        d18.f18813e = -2;
        d18.f18811c = "Client does not support subscriptions update.";
        d18.h();
        gvg d19 = ejd.d();
        d19.f18813e = -2;
        d19.f18811c = "Client does not support get purchase history.";
        d19.h();
        gvg d20 = ejd.d();
        d20.f18813e = -2;
        d20.f18811c = "Client does not support price change confirmation.";
        d20.h();
        gvg d21 = ejd.d();
        d21.f18813e = -2;
        d21.f18811c = "Play Store version installed does not support cross selling products.";
        d21.h();
        gvg d22 = ejd.d();
        d22.f18813e = -2;
        d22.f18811c = "Client does not support multi-item purchases.";
        k = d22.h();
        gvg d23 = ejd.d();
        d23.f18813e = -2;
        d23.f18811c = "Client does not support offer_id_token.";
        f15340d = d23.h();
        gvg d24 = ejd.d();
        d24.f18813e = -2;
        d24.f18811c = "Client does not support ProductDetails.";
        f15339c = d24.h();
        gvg d25 = ejd.d();
        d25.f18813e = -2;
        d25.f18811c = "Client does not support in-app messages.";
        d25.h();
        gvg d26 = ejd.d();
        d26.f18813e = -2;
        d26.f18811c = "Client does not support user choice billing.";
        d26.h();
        gvg d27 = ejd.d();
        d27.f18813e = -2;
        d27.f18811c = "Play Store version installed does not support external offer.";
        d27.h();
        gvg d28 = ejd.d();
        d28.f18813e = -2;
        d28.f18811c = "Play Store version installed does not support multi-item purchases with season pass in one cart.";
        d28.h();
        gvg d29 = ejd.d();
        d29.f18813e = -2;
        d29.f18811c = "Play Store version installed does not support querying AutoPay plan purchase.";
        d29.h();
        gvg d30 = ejd.d();
        d30.f18813e = -2;
        d30.f18811c = "Play Store version installed does not support including suspended subscriptions.";
        d30.h();
        gvg d31 = ejd.d();
        d31.f18813e = 5;
        d31.f18811c = "Unknown feature";
        d31.h();
        gvg d32 = ejd.d();
        d32.f18813e = -2;
        d32.f18811c = "Play Store version installed does not support get billing config.";
        d32.h();
        gvg d33 = ejd.d();
        d33.f18813e = -2;
        d33.f18811c = "Query product details with serialized docid is not supported.";
        d33.h();
        gvg d34 = ejd.d();
        d34.f18813e = -2;
        d34.f18811c = "Play Store version installed does not support launching external offer flow.";
        d34.h();
        gvg d35 = ejd.d();
        d35.f18813e = 4;
        d35.f18811c = "Item is unavailable for purchase.";
        j = d35.h();
        gvg d36 = ejd.d();
        d36.f18813e = -2;
        d36.f18811c = "Query product details with developer specified account is not supported.";
        d36.h();
        gvg d37 = ejd.d();
        d37.f18813e = -2;
        d37.f18811c = "Play Store version installed does not support alternative billing only.";
        d37.h();
        gvg d38 = ejd.d();
        d38.f18813e = 5;
        d38.f18811c = "To use this API you must specify a PurchasesUpdateListener when initializing a BillingClient.";
        o = d38.h();
        gvg d39 = ejd.d();
        d39.f18813e = 6;
        d39.f18811c = "An error occurred while retrieving billing override.";
        r = d39.h();
        gvg d40 = ejd.d();
        d40.f18813e = -2;
        d40.f18811c = "Play Store version installed does not support the provided billing program.";
        d40.h();
    }

    public static ejd s(int i2, String str) {
        gvg d2 = ejd.d();
        d2.f18813e = i2;
        d2.f18811c = str;
        return d2.h();
    }
}
