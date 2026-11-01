package g;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class civ implements fyj, gjf {

    /* renamed from: a, reason: collision with root package name */
    public final fdn f12952a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f12953b;

    /* renamed from: c, reason: collision with root package name */
    public final Path f12954c = new Path();

    /* renamed from: d, reason: collision with root package name */
    public final ais f12955d = new ais(1);

    /* renamed from: e, reason: collision with root package name */
    public final boolean f12956e;

    /* renamed from: f, reason: collision with root package name */
    public final fts f12957f;

    public civ(fts ftsVar, grq grqVar, awc awcVar) {
        this.f12956e = awcVar.f10966a;
        this.f12957f = ftsVar;
        fdn fdnVar = new fdn((List) awcVar.f10969d.z);
        this.f12952a = fdnVar;
        grqVar.bg(fdnVar);
        fdnVar.l(this);
    }

    @Override // g.fyj
    public final void dq() {
        this.f12953b = false;
        this.f12957f.invalidateSelf();
    }

    @Override // g.dvz
    public final void n(List list, List list2) {
        ArrayList arrayList = null;
        int i = 0;
        while (true) {
            ArrayList arrayList2 = (ArrayList) list;
            if (i >= arrayList2.size()) {
                this.f12952a.r = arrayList;
                return;
            }
            dvz dvzVar = (dvz) arrayList2.get(i);
            if (dvzVar instanceof ejw) {
                ejw ejwVar = (ejw) dvzVar;
                if (ejwVar.getType() == eyu.dq) {
                    this.f12955d.f10279a.add(ejwVar);
                    ejwVar.g(this);
                    i++;
                }
            }
            if (dvzVar instanceof enh) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add((enh) dvzVar);
            }
            i++;
        }
    }

    @Override // g.gjf
    public final Path p() {
        boolean z = this.f12953b;
        Path path = this.f12954c;
        if (z) {
            return path;
        }
        path.reset();
        if (this.f12956e) {
            this.f12953b = true;
            return path;
        }
        Path path2 = (Path) this.f12952a.m();
        if (path2 == null) {
            return path;
        }
        path.set(path2);
        path.setFillType(Path.FillType.EVEN_ODD);
        this.f12955d.f(path);
        this.f12953b = true;
        return path;
    }
}
