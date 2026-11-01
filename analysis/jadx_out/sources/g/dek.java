package g;

import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
public abstract class dek {

    /* renamed from: a, reason: collision with root package name */
    public static final vf f14057a = vf.f20151a;

    public static vf b(Fragment fragment) {
        while (fragment != null) {
            if (fragment.isAdded()) {
                bff.e(fragment.getParentFragmentManager(), "declaringFragment.parentFragmentManager");
            }
            fragment = fragment.getParentFragment();
        }
        return f14057a;
    }

    public static void c(crc crcVar) {
        if (androidx.fragment.app.v.ao(3)) {
            crcVar.a().getClass();
        }
    }

    public static final void d(Fragment fragment, String str) {
        bff.p(str, "previousFragmentId");
        c(new fib(fragment, str));
        b(fragment).getClass();
    }
}
