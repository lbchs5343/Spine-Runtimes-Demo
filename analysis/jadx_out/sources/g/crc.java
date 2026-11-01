package g;

import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
public abstract class crc extends RuntimeException {
    private final Fragment fragment;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public crc(Fragment fragment, String str) {
        super(str);
        bff.p(fragment, "fragment");
        this.fragment = fragment;
    }

    public final Fragment a() {
        return this.fragment;
    }
}
