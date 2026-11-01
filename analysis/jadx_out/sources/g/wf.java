package g;

import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
public final class wf extends fmq {
    private final int requestCode;
    private final Fragment targetFragment;

    public wf(Fragment fragment, Fragment fragment2, int i) {
        super(fragment, "Attempting to set target fragment " + fragment2 + " with request code " + i + " for fragment " + fragment);
        this.targetFragment = fragment2;
        this.requestCode = i;
    }
}
