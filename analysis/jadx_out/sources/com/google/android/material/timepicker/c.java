package com.google.android.material.timepicker;

import android.text.Editable;
import android.text.TextUtils;
import com.google.android.material.chip.Chip;
import g.jp;
import g.y;

/* loaded from: classes3.dex */
public final class c extends y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ChipTextInputComboView f9096a;

    public c(ChipTextInputComboView chipTextInputComboView) {
        this.f9096a = chipTextInputComboView;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        ChipTextInputComboView chipTextInputComboView = this.f9096a;
        Chip chip = chipTextInputComboView.f9085b;
        if (TextUtils.isEmpty(editable)) {
            chip.setText(jp.formatText(chipTextInputComboView.getResources(), "00"));
            return;
        }
        int i = ChipTextInputComboView.f9084a;
        String formatText = jp.formatText(chipTextInputComboView.getResources(), editable);
        if (TextUtils.isEmpty(formatText)) {
            formatText = jp.formatText(chipTextInputComboView.getResources(), "00");
        }
        chip.setText(formatText);
    }
}
