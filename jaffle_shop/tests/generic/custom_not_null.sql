{% test custom_not_null(model, column_name) %}

    {{ config(severity = 'warn', store_failures=true) }}
    select *
    from {{ model }}
    where {{ column_name }} = 'NULL'

{% endtest %}

