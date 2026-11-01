package g;

/* loaded from: classes3.dex */
public enum bme {
    BANNER(0),
    INTERSTITIAL(1),
    REWARDED(2),
    REWARDED_INTERSTITIAL(3),
    NATIVE(4),
    APP_OPEN_AD(6);

    private final int zzb;

    bme(int i) {
        this.zzb = i;
    }

    public static bme b(int i) {
        for (bme bmeVar : values()) {
            if (bmeVar.zzb == i) {
                return bmeVar;
            }
        }
        return null;
    }

    public final int c() {
        return this.zzb;
    }
}
