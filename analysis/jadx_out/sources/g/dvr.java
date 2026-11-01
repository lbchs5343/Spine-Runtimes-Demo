package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.HashMap;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dvr implements axb {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f14896a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ dvr[] f14897b;

    /* renamed from: d, reason: collision with root package name */
    public static final dvr f14898d;
    public static final dvr dq;
    public static final dvr ox;

    static {
        dvr dvrVar = new dvr("TRUE", 0);
        dq = dvrVar;
        dvr dvrVar2 = new dvr("FALSE", 1);
        f14898d = dvrVar2;
        dvr dvrVar3 = new dvr("NULL", 2);
        ox = dvrVar3;
        f14897b = new dvr[]{dvrVar, dvrVar2, dvrVar3};
        f14896a = new HashMap(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        for (dvr dvrVar4 : values()) {
            f14896a.put(dvrVar4.name().toLowerCase(), dvrVar4);
        }
    }

    public static dvr valueOf(String str) {
        return (dvr) Enum.valueOf(dvr.class, str);
    }

    public static dvr[] values() {
        return (dvr[]) f14897b.clone();
    }
}
