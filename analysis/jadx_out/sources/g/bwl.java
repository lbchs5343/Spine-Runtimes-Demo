package g;

import android.widget.SeekBar;

/* loaded from: classes.dex */
public final class bwl implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ epi f12320a;

    public bwl(epi epiVar) {
        this.f12320a = epiVar;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        float f2 = i;
        epi epiVar = this.f12320a;
        epiVar.r((f2 * epiVar.o) / 100.0f, false);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
    }
}
