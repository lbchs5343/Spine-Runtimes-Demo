package g;

import android.text.TextUtils;

/* loaded from: classes.dex */
public class glp extends th {

    /* renamed from: c, reason: collision with root package name */
    public he f18362c;

    public glp(String str, he heVar) {
        super(str, eyt.bk(heVar.getClassName()));
        String viewIdResourceNameHuman = heVar.getViewIdResourceNameHuman();
        if (!TextUtils.isEmpty(viewIdResourceNameHuman)) {
            this.f20032b = awf.r(new StringBuilder(), this.f20032b, "(", viewIdResourceNameHuman, ")");
        }
        this.f18362c = heVar;
    }
}
