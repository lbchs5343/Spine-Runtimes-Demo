package g;

import android.view.View;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class flo implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ gq f16994a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b.c.d f16995b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f16996c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f16997d;

    public /* synthetic */ flo(b.c.d dVar, ArrayList arrayList, gq gqVar, int i) {
        this.f16996c = i;
        this.f16995b = dVar;
        this.f16997d = arrayList;
        this.f16994a = gqVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f16996c) {
            case 0:
                b.c.d.ae(this.f16995b.f356ab, this.f16997d, this.f16994a.f18564c);
                break;
            default:
                b.c.d.ae(this.f16995b.j, this.f16997d, this.f16994a.f18564c);
                break;
        }
    }
}
