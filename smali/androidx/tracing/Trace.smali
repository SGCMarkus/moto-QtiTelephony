.class public final Landroidx/tracing/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# direct methods
.method public static beginSection(Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-static {p0}, Landroidx/tracing/TraceApi18Impl;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static endSection()V
    .locals 0

    .line 92
    invoke-static {}, Landroidx/tracing/TraceApi18Impl;->endSection()V

    return-void
.end method

.method public static isEnabled()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 61
    invoke-static {}, Landroidx/tracing/TraceApi29Impl;->isEnabled()Z

    move-result v0

    return v0
.end method
