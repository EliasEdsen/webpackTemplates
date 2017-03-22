<template lang='jade'>
  #app
    .page1(v-if='isMenu')
      button.btn(v-on:click="switchMenu") Открыть меню
    .page2(v-else)
      button.btn(v-on:click="switchMenu") Закрыть меню

      .left
        div.textBlock(v-for="val in items")
          .block(v-if='val.visible')
            p(v-if='val.visible') {{ val.text }}
            hr
      .right
        div.textBlock(v-for="val, key in items")
          .block(v-if='val.visible')
            textarea(v-model='val.text')
            button.switchVisible(v-on:click="switchVisible(key)") Скрыть
            button.remove(v-on:click="remove(key)") Удалить
          .block(v-else)
            button.switchVisible(v-on:click="switchVisible(key)") Показать
            button.remove(v-on:click="remove(key)") Удалить

        button.add(v-on:click="add") Добавить
</template>

<script lang='coffee'>
  module.exports =
    name: 'app'
    data: () ->
      items: []
      isMenu: true
    methods:
      switchMenu   :       -> @isMenu = !@isMenu
      switchVisible: (key) -> @items[key].visible = !@items[key].visible
      add          :       -> @items.push({text: '', visible: true})
      remove       : (key) -> @items.splice(key, 1)

</script>

<style lang='stylus'>
  #app
    width: 100%;
    height: 100%;

    .btn
      transform: translateX(-50%);
      position: absolute;
      left: 50%;

    .textBlock
      margin-top: 10px;

    .page2
      .left
        width: 40%;
        height: 100%;
        float: left;


      .right
        width: 40%;
        height: 100%;
        float: right;
        background: #ddd;

        textarea
          width: 80%;
          margin: 10px 0 0 10%;

        .remove, .switchVisible
          margin-left: 10%;

        .add
          margin-top: 20px;
</style>

