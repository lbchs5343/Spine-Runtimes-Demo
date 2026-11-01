package androidx.fragment.app;

import android.view.View;
import android.view.Window;
import g.arz;
import g.bkp;
import g.cdh;
import g.cem;
import g.dnu;
import g.dts;
import g.eud;
import g.euu;
import g.fay;
import g.fxh;
import g.gbv;
import g.gff;
import g.gpp;
import g.gyj;
import g.hbu;
import g.wg;

/* loaded from: classes.dex */
public final class p extends fay implements gpp, fxh, dnu, gbv, gyj, eud, cdh, gff, cem, bkp {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f204a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(u uVar) {
        super(uVar);
        this.f204a = uVar;
    }

    @Override // g.bkp
    public final void addMenuProvider(arz arzVar) {
        this.f204a.addMenuProvider(arzVar);
    }

    @Override // g.gpp
    public final void addOnConfigurationChangedListener(dts dtsVar) {
        this.f204a.addOnConfigurationChangedListener(dtsVar);
    }

    @Override // g.dnu
    public final void addOnMultiWindowModeChangedListener(dts dtsVar) {
        this.f204a.addOnMultiWindowModeChangedListener(dtsVar);
    }

    @Override // g.gbv
    public final void addOnPictureInPictureModeChangedListener(dts dtsVar) {
        this.f204a.addOnPictureInPictureModeChangedListener(dtsVar);
    }

    @Override // g.fxh
    public final void addOnTrimMemoryListener(dts dtsVar) {
        this.f204a.addOnTrimMemoryListener(dtsVar);
    }

    @Override // g.cem
    public final void b(Fragment fragment) {
        this.f204a.onAttachFragment(fragment);
    }

    @Override // g.egk
    public final View c(int i) {
        return this.f204a.findViewById(i);
    }

    @Override // g.egk
    public final boolean d() {
        Window window = this.f204a.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }

    @Override // g.cdh
    public final androidx.activity.result.a getActivityResultRegistry() {
        return this.f204a.getActivityResultRegistry();
    }

    @Override // g.iz
    public final euu getLifecycle() {
        return this.f204a.mFragmentLifecycleRegistry;
    }

    @Override // g.eud
    public final androidx.activity.b getOnBackPressedDispatcher() {
        return this.f204a.getOnBackPressedDispatcher();
    }

    @Override // g.gff
    public final hbu getSavedStateRegistry() {
        return this.f204a.getSavedStateRegistry();
    }

    @Override // g.gyj
    public final wg getViewModelStore() {
        return this.f204a.getViewModelStore();
    }

    @Override // g.bkp
    public final void removeMenuProvider(arz arzVar) {
        this.f204a.removeMenuProvider(arzVar);
    }

    @Override // g.gpp
    public final void removeOnConfigurationChangedListener(dts dtsVar) {
        this.f204a.removeOnConfigurationChangedListener(dtsVar);
    }

    @Override // g.dnu
    public final void removeOnMultiWindowModeChangedListener(dts dtsVar) {
        this.f204a.removeOnMultiWindowModeChangedListener(dtsVar);
    }

    @Override // g.gbv
    public final void removeOnPictureInPictureModeChangedListener(dts dtsVar) {
        this.f204a.removeOnPictureInPictureModeChangedListener(dtsVar);
    }

    @Override // g.fxh
    public final void removeOnTrimMemoryListener(dts dtsVar) {
        this.f204a.removeOnTrimMemoryListener(dtsVar);
    }
}
