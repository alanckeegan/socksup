function scrollLastMessageIntoView() {
const messages = document.querySelectorAll('.message');
const lastMessage = messages.[messages.last -1];
lastMessage.scrollIntoView()
}
