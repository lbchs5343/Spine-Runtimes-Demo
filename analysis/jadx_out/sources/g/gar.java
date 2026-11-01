package g;

/* loaded from: classes.dex */
public enum gar {
    QuoteFieldNames,
    UseSingleQuotes,
    WriteMapNullValue,
    WriteEnumUsingToString,
    UseISO8601DateFormat,
    WriteNullListAsEmpty,
    WriteNullStringAsEmpty,
    WriteNullNumberAsZero,
    WriteNullBooleanAsFalse,
    SkipTransientField,
    SortField,
    WriteTabAsSpecial,
    PrettyFormat,
    WriteClassName,
    DisableCircularReferenceDetect,
    WriteSlashAsSpecial,
    BrowserCompatible,
    WriteDateUseDateFormat,
    NotWriteRootClassName,
    DisableCheckSpecialChar,
    BeanToArray,
    WriteNonStringKeyAsString,
    NotWriteDefaultValue;

    public static final gar[] EMPTY = new gar[0];
    public final int mask = 1 << ordinal();

    gar() {
    }

    public static int b(gar[] garVarArr) {
        if (garVarArr == null) {
            return 0;
        }
        int i = 0;
        for (gar garVar : garVarArr) {
            i |= garVar.mask;
        }
        return i;
    }
}
