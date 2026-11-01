package g;

import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
public final class fib extends crc {
    private final String previousFragmentId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fib(Fragment fragment, String str) {
        super(fragment, "Attempting to reuse fragment " + fragment + " with previous ID " + str);
        bff.p(str, "previousFragmentId");
        this.previousFragmentId = str;
    }
}
